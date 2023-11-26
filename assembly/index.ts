import { outputChar } from './env';

const enum VmReturnType {
  HALT = 0,
  RUNNING = 1,
  INPUT_STARVATION = 2,
}

const NUM_CAP: u16 = 32768;
const REGISTER_CAP: u16 = 32776;
const STACK_CAP = 4 * 1024;

const haltOnNewLabel = false;

const labelsOffsets: StaticArray<u16> = [
  347, 358, 368, 397, 424, 453, 484, 495, 500, 564, 590, 684, 708, 731, 845,
  978, 1000, 1023, 1074, 1093, 1118, 1139, 1158, 1177, 1208, 1289, 1312, 1381,
  1414, 1437, 1480, 1507, 1563, 1566, 1618, 1645, 1666, 1711, 1714, 1730, 1787,
  1816, 1830, 1852, 1886, 2019, 2047, 2060, 2092, 2099, 2112, 2734, 2742, 2770,
  2791, 2848, 2885, 2924, 2939, 2944, 2950, 3032, 3104, 3146, 3189, 3193, 3216,
  3238, 3302, 3326, 3457, 3481, 3651, 3694, 3940, 4882, 5017, 5312, 5336, 5579,
  5605, 5636, 5714, 5871, 5918, 5959, 5989, 6019, 6035, 6048,
];

const functionsOffsets: StaticArray<u16> = [
  1285, 1287, 1458, 1518, 1528, 1531, 1543, 1571, 1588, 1605, 1619, 1648, 1667,
  1723, 1767, 1841, 2001, 2125, 2964, 3245, 3362, 3400, 3568, 3656, 3727, 3742,
  3776, 3786, 3806, 3893, 4720, 4799, 4885, 4977, 5360, 5377, 5394, 5411, 5428,
  5445, 5814, 5823, 5846, 5876, 5893, 5921, 5964, 5976, 5990, 6027,
];

let pc: u16 = 0;

const reg: StaticArray<u16> = [0, 0, 0, 0, 0, 0, 0, 0];
const stack: StaticArray<u16> = new StaticArray<u16>(STACK_CAP);
let stackIndex: u16 = 0;
let textBuffer: string[] = [];
let inputBuffer: u8[] = [];
let debugMode = false;

export function readMemory(offset: u32): u16 {
  return load<u16>(offset);
}

export function setDebugMode(enable: boolean): void {
  debugMode = enable;
}

export function setRegisterValue(regIndex: u8, value: u16): void {
  reg[regIndex] = value;
}

export function getCurrentPc(): u16 {
  return pc;
}

function pushStack(value: u16): void {
  if (stackIndex === STACK_CAP) {
    throw new Error('Stack overflow');
  }

  stack[stackIndex] = value;
  stackIndex += 1;
}

function popStack(): u16 {
  if (stackIndex === 0) {
    throw new Error('Empty stack');
  }

  stackIndex -= 1;
  return stack[stackIndex];
}

function loadOp(): u16 {
  const opCode = load<u16>(pc * 2);
  pc += 1;
  return opCode;
}

function readRegister(): u8 {
  const value = load<u16>(pc * 2);
  pc += 1;

  if (value < NUM_CAP) {
    throw new Error(`Not a register: ${value}`);
  }

  if (value >= REGISTER_CAP) {
    throw new Error(`Not a register: ${value}`);
  }

  return i8(value - NUM_CAP);
}

function readValue(): u16 {
  const value = load<u16>(pc * 2);
  pc += 1;

  if (value < NUM_CAP) {
    return value;
  }

  if (value < REGISTER_CAP) {
    return reg[value - NUM_CAP];
  }

  throw new Error(`Invalid value ${value}`);
}

function checkOutput(): void {
  if (textBuffer.length > 0) {
    console.log(textBuffer.join(''));
    textBuffer.length = 0;
  }
}

function halt(): VmReturnType {
  return VmReturnType.HALT;
}

function nextOp(): VmReturnType {
  const opOffset = pc;
  const opCode = loadOp();

  if (opCode !== 19) {
    checkOutput();
  }

  switch (opCode) {
    // halt: 0
    //   stop execution and terminate the program
    case 0: {
      return halt();
    }

    // set: 1 a b
    //   set register <a> to the value of <b>
    case 1: {
      const a = readRegister();
      const b = readValue();
      reg[a] = b;
      break;
    }

    // push: 2 a
    //   push <a> onto the stack
    case 2: {
      const a = readValue();
      pushStack(a);
      break;
    }

    // pop: 3 a
    //   remove the top element from the stack and write it into <a>; empty stack = error
    case 3: {
      const a = readRegister();
      reg[a] = popStack();
      break;
    }

    // eq: 4 a b c
    //   set <a> to 1 if <b> is equal to <c>; set it to 0 otherwise
    case 4: {
      const a = readRegister();
      const b = readValue();
      const c = readValue();
      reg[a] = b === c ? 1 : 0;
      break;
    }

    // gt: 5 a b c
    //   set <a> to 1 if <b> is greater than <c>; set it to 0 otherwise
    case 5: {
      const a = readRegister();
      const b = readValue();
      const c = readValue();
      reg[a] = b > c ? 1 : 0;
      break;
    }

    // jmp: 6 a
    //   jump to <a>
    case 6: {
      pc = readValue();

      if (!labelsOffsets.includes(pc)) {
        console.log(`### NEW LABEL: (${pc}) ###`);
        if (haltOnNewLabel) {
          return halt();
        }
      }
      break;
    }

    // jt: 7 a b
    //   if <a> is nonzero, jump to <b>
    case 7: {
      const a = readValue();

      if (a !== 0) {
        pc = readValue();

        if (!labelsOffsets.includes(pc)) {
          console.log(`### NEW LABEL: (${pc}) ###`);
          if (haltOnNewLabel) {
            return halt();
          }
        }
      } else {
        pc += 1;
      }
      break;
    }

    // jf: 8 a b
    //   if <a> is zero, jump to <b>
    case 8: {
      const a = readValue();

      if (a === 0) {
        pc = readValue();

        if (!labelsOffsets.includes(pc)) {
          console.log(`### NEW LABEL: (${pc}) ###`);
          if (haltOnNewLabel) {
            return halt();
          }
        }
      } else {
        pc += 1;
      }
      break;
    }

    // add: 9 a b c
    //   assign into <a> the sum of <b> and <c> (modulo 32768)
    case 9: {
      const a = readRegister();
      const b = readValue();
      const c = readValue();
      let sum = b + c;

      if (sum >= NUM_CAP) {
        sum -= NUM_CAP;
      }

      reg[a] = sum;
      break;
    }

    // mult: 10 a b c
    //   store into <a> the product of <b> and <c> (modulo 32768)
    case 10: {
      const a = readRegister();
      const b = readValue();
      const c = readValue();
      reg[a] = (b * c) % NUM_CAP;
      break;
    }

    // mod: 11 a b c
    //   store into <a> the remainder of <b> divided by <c>
    case 11: {
      const a = readRegister();
      const b = readValue();
      const c = readValue();
      reg[a] = b % c;
      break;
    }

    // and: 12 a b c
    //   stores into <a> the bitwise and of <b> and <c>
    case 12: {
      const a = readRegister();
      const b = readValue();
      const c = readValue();
      reg[a] = b & c;
      break;
    }

    // or: 13 a b c
    //   stores into <a> the bitwise or of <b> and <c>
    case 13: {
      const a = readRegister();
      const b = readValue();
      const c = readValue();
      reg[a] = b | c;
      break;
    }

    // not: 14 a b
    //   stores 15-bit bitwise inverse of <b> in <a>
    case 14: {
      const a = readRegister();
      const b = readValue();
      reg[a] = b ^ 0x7fff;
      break;
    }

    // rmem: 15 a b
    //   read memory at address <b> and write it to <a>
    case 15: {
      const a = readRegister();
      const b = readValue();
      reg[a] = load<u16>(b * 2);
      break;
    }

    // wmem: 16 a b
    //   write the value from <b> into memory at address <a>
    case 16: {
      const a = readValue();
      const b = readValue();
      store<u16>(a * 2, b);
      break;
    }

    // call: 17 a
    //   write the address of the next instruction to the stack and jump to <a>
    case 17: {
      const a = readValue();

      if (!functionsOffsets.includes(a)) {
        console.log(`### NEW FUNC: (${a}) ###`);
        if (haltOnNewLabel) {
          return halt();
        }
      }

      if (a === 6027) {
        reg[0] = reg[7] + 1;
        reg[1] = reg[7];
        console.log(
          `[function overriding #6027 called, continue from pc: (${pc})]`,
        );
        break;
      }

      pushStack(pc);
      pc = a;

      if (debugMode) {
        if (opOffset === 1536 && a === 2125) {
          break;
        }
        if (opOffset === 1498 && a === 1531) {
          break;
        }

        const modifier =
          opOffset === 727 || opOffset === 1498 ? ' (dynamic)' : '';

        console.log(`    debug: call from (${opOffset}) to (${a})${modifier}`);
      }
      break;
    }

    // ret: 18
    //   remove the top element from the stack and jump to it; empty stack = halt
    case 18: {
      if (stackIndex === 0) {
        return halt();
      }
      pc = popStack();
      break;
    }

    // out: 19 a
    //   write the character represented by ascii code <a> to the terminal
    case 19:
      const value = readValue();
      // textBuffer.push(String.fromCodePoint(value));
      outputChar(value);
      break;

    // in: 20 a
    //   read a character from the terminal and write its ascii code to <a>;
    //   it can be assumed that once input starts, it will continue until a
    //   newline is encountered; this means that you can safely read whole
    //   lines from the keyboard and trust that they will be fully read
    case 20: {
      // // First Version:
      // const charCode = readCharFromHost();
      // reg[a] = charCode;
      // break;

      if (inputBuffer.length) {
        const charCode = inputBuffer.shift();

        const a = readRegister();
        reg[a] = charCode;
      } else {
        pc -= 1;
        return VmReturnType.INPUT_STARVATION;
      }
      break;
    }

    // noop: 21
    //   no operation
    case 21:
      break;

    default:
      throw new Error(`Unknown command (${opCode})`);
  }

  return VmReturnType.RUNNING;
}

export function putUserInput(inputString: u8[]): void {
  inputBuffer = inputString;
}

export function run(): u8 {
  while (true) {
    const returnType = nextOp();

    switch (returnType) {
      case VmReturnType.HALT: {
        return 0;
      }
      case VmReturnType.RUNNING: {
        break;
      }
      case VmReturnType.INPUT_STARVATION:
        return 1;
    }
  }
}
