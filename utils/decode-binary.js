import { readFile, writeFile } from 'node:fs/promises';
import { uniq } from 'lodash-es';

const labelsOffsets = [
  369, 380, 506, 517, 522, 586, 612, 706, 730, 753, 867, 1000, 1022, 1045, 1502,
  1529, 1585, 1588, 1640, 1667, 1688, 1733, 1736, 1752, 1809, 1838, 1852, 1874,
  1908, 2041, 2069, 2082, 2114, 2121, 2134, 2756, 2764, 2792, 2813, 2870, 2907,
  2946, 2961, 2966, 2972, 3054, 3126, 3168, 3211, 3215, 3238, 3348, 3503, 3673,
  3716, 3962, 4904, 5039, 5334, 5358, 5627, 5658, 5736, 5893, 5940, 5981, 6011,
  6041, 6057, 6070, 3260, 4679,
].sort((a, b) => a - b);

const functionsOffsets = [
  1307, 1309, 1480, 1540, 1550, 1553, 1565, 1593, 1610, 1627, 1641, 1670, 1689,
  1745, 1789, 1863, 2023, 2147, 2986, 3267, 3384, 3422, 3590, 3678, 3749, 3764,
  3798, 3808, 3828, 3915, 4742, 4821, 4907, 4999, 5382, 5399, 5416, 5433, 5450,
  5467, 5836, 5845, 5868, 5898, 5915, 5943, 5986, 6012, 6049, 4186, 4633,
].sort((a, b) => a - b);

const offsets = uniq([...labelsOffsets, ...functionsOffsets]).sort(
  (a, b) => a - b,
);

// Dynamic calls: 727 and 1498
// Dynamic functions: 6027

const NUM_CAP = 32768;
const REGISTER_CAP = 32776;

const operations = [];

function pc(offset) {
  return `${offset}(pc)`;
}

async function run() {
  const buffer = await readFile('./challenge/challenge.bin');

  let offset = 0;

  function readNext() {
    const byte = buffer[offset * 2];
    const byte2 = buffer[offset * 2 + 1];
    const value = byte + byte2 * 256;
    offset += 1;
    return value;
  }

  function readRegister() {
    const reg = readNext();

    if (reg < NUM_CAP || reg >= REGISTER_CAP) {
      throw new Error('Invalid register');
    }

    return `x${reg - NUM_CAP}`;
  }

  function readValueOrRegister() {
    const reg = readNext();

    if (reg < NUM_CAP) {
      return reg;
    }

    if (reg < REGISTER_CAP) {
      return `x${reg - NUM_CAP}`;
    }

    throw new Error('Invalid value/register');
  }

  function readTernary(name, opCodeOffset) {
    const a = readRegister();
    const b = readValueOrRegister();
    const c = readValueOrRegister();
    operations.push({
      offset: opCodeOffset,
      op: name,
      args: [a, b, c],
    });
  }

  function readBinary(name, opCodeOffset) {
    const a = readRegister();
    const b = readValueOrRegister();
    operations.push({
      offset: opCodeOffset,
      op: name,
      args: [a, b],
    });
  }

  let stop = false;

  while (!stop) {
    const opCodeOffset = offset;
    const opCode = readNext();

    switch (opCode) {
      case 0: {
        operations.push({
          offset: opCodeOffset,
          op: 'halt',
          args: [],
        });
        break;
      }
      case 1: {
        readBinary('set', opCodeOffset);
        break;
      }
      case 2: {
        const a = readValueOrRegister();
        operations.push({
          offset: opCodeOffset,
          op: 'push',
          args: [a],
        });
        break;
      }
      case 3: {
        const a = readRegister();
        operations.push({
          offset: opCodeOffset,
          op: 'pop',
          args: [a],
        });
        break;
      }
      case 4: {
        readTernary('eq', opCodeOffset);
        break;
      }
      case 5: {
        readTernary('gt', opCodeOffset);
        break;
      }
      case 6: {
        const a = readValueOrRegister();
        operations.push({
          offset: opCodeOffset,
          op: 'jmp',
          args: [pc(a)],
        });
        break;
      }
      case 7: {
        const a = readValueOrRegister();
        const b = readValueOrRegister();
        operations.push({
          offset: opCodeOffset,
          op: 'jt',
          args: [a, pc(b)],
        });
        break;
      }
      case 8: {
        const a = readValueOrRegister();
        const b = readValueOrRegister();
        operations.push({
          offset: opCodeOffset,
          op: 'jf',
          args: [a, pc(b)],
        });
        break;
      }
      case 9: {
        readTernary('add', opCodeOffset);
        break;
      }
      case 10: {
        readTernary('mul', opCodeOffset);
        break;
      }
      case 11: {
        readTernary('mod', opCodeOffset);
        break;
      }
      case 12: {
        readTernary('and', opCodeOffset);
        break;
      }
      case 13: {
        readTernary('or', opCodeOffset);
        break;
      }
      case 14: {
        readBinary('not', opCodeOffset);
        break;
      }
      case 15: {
        const a = readRegister();
        const b = readValueOrRegister();
        operations.push({
          offset: opCodeOffset,
          op: 'rmem',
          args: [`into: ${a}`, `addr: ${b}`],
        });
        break;
      }
      case 16: {
        const a = readValueOrRegister();
        const b = readValueOrRegister();
        operations.push({
          offset: opCodeOffset,
          op: 'wmem',
          args: [`addr: ${a}`, `value: ${b}`],
        });
        break;
      }
      case 17: {
        const a = readValueOrRegister();
        operations.push({
          offset: opCodeOffset,
          op: 'call',
          args: [pc(a)],
        });
        break;
      }
      case 18: {
        operations.push({
          offset: opCodeOffset,
          op: 'ret',
          args: [],
        });
        break;
      }
      case 19: {
        const a = readValueOrRegister();
        operations.push({
          offset: opCodeOffset,
          op: 'out',
          args: [a],
        });
        break;
      }
      case 20: {
        const a = readRegister();
        operations.push({
          offset: opCodeOffset,
          op: 'in',
          args: [a],
        });
        break;
      }
      case 21: {
        operations.push({
          offset: opCodeOffset,
          op: 'noop',
          args: [],
        });
        break;
      }

      default: {
        console.log('Stop on offset:', offset, '| not an opcode:', opCode);

        const index = offsets.findIndex((funcOffset) => funcOffset > offset);

        if (index === -1) {
          stop = true;
        } else {
          offset = offsets[index];
          console.log('Start from offset:', offset);
          operations.push({
            op: '.GAP',
          });
        }
        break;
      }
    }
  }

  for (const operation of operations) {
    if (operation.args) {
      for (let i = 0; i < operation.args.length; i++) {
        const arg = operation.args[i];
        if (typeof arg === 'number') {
          let symbol;

          if (arg === 10) {
            symbol = '\\n';
          } else if (
            arg === 32 ||
            (arg >= 65 && arg <= 90) ||
            (arg >= 97 && arg <= 122)
          ) {
            symbol = String.fromCodePoint(arg);
          }

          if (symbol) {
            operation.args[i] = `${arg}(${symbol})`;
          }
        }
      }
    }
  }

  const listing = operations
    .map((operation) => {
      const offset = (operation.offset?.toString() || '').padStart(5, ' ');
      const op = operation.op.padEnd(4, ' ');

      let prefix = '';

      if (functionsOffsets.includes(operation.offset)) {
        prefix = `function#${operation.offset}:\n`;
      } else if (labelsOffsets.includes(operation.offset)) {
        prefix = `label#${operation.offset}:\n`;
      }

      let args = '';

      if (operation.args) {
        args = operation.args.join('  ');
      }

      return `${prefix}${offset}  ${op}  ${args}`.trimEnd();
    })
    .join('\n');

  await writeFile('./utils/listing.txt', listing);
}

run().catch((error) => {
  console.error(error);
  process.exit(1);
});
