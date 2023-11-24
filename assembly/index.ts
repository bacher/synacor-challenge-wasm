const NUM_CAP: u16 = 32768;
const REGISTER_CAP: u16 = 32776;

export function readMemory(offset: u32): u16 {
  return load<u16>(offset);
}

let pc = 0;

const reg: StaticArray<u16> = [0, 0, 0, 0, 0, 0, 0, 0];
const stack: StaticArray<u16> = new StaticArray<u16>(1024);
let stackIndex: u16 = 0;
let textBuffer: string[] = [];

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

export function nextOp(): boolean {
  const opCode = loadOp();

  if (opCode !== 19 && textBuffer.length > 0) {
    console.log(textBuffer.join(''));
    textBuffer.length = 0;
  }

  switch (opCode) {
    // halt: 0
    //   stop execution and terminate the program
    case 0:
      return false;

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
    case 2:
      const a = readValue();
      stack[stackIndex] = a;
      stackIndex += 1;
      break;

    // pop: 3 a
    //   remove the top element from the stack and write it into <a>; empty stack = error
    case 3: {
      if (stackIndex === 0) {
        throw new Error('Empty stack');
      }
      const a = readRegister();
      stackIndex -= 1;
      reg[a] = stack[stackIndex];
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
      break;
    }

    // jt: 7 a b
    //   if <a> is nonzero, jump to <b>
    case 7: {
      const a = readValue();

      if (a !== 0) {
        pc = readValue();
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

    // out: 19 a
    //   write the character represented by ascii code <a> to the terminal
    case 19:
      const value = readValue();
      textBuffer.push(String.fromCodePoint(value));
      break;

    // noop: 21
    //   no operation
    case 21:
      break;

    default:
      throw new Error(`Unknown command (${opCode})`);
  }

  return true;
}

export function run(): void {
  while (nextOp()) {}
}
