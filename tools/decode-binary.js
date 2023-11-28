import { readFile, writeFile } from 'node:fs/promises';
import { uniq } from 'lodash-es';

const labelsOffsets = [
  347, 358, 368, 397, 424, 453, 484, 495, 500, 564, 590, 684, 708, 731, 845,
  941, 978, 1000, 1023, 1074, 1093, 1118, 1139, 1158, 1177, 1208, 1239, 1262,
  1289, 1312, 1381, 1414, 1437, 1480, 1507, 1563, 1566, 1618, 1645, 1666, 1706,
  1711, 1714, 1730, 1787, 1816, 1819, 1830, 1852, 1880, 1886, 1952, 2019, 2040,
  2047, 2060, 2092, 2099, 2112, 2204, 2210, 2233, 2236, 2241, 2252, 2276, 2296,
  2309, 2312, 2734, 2742, 2770, 2791, 2848, 2885, 2924, 2939, 2944, 2950, 3006,
  3032, 3104, 3146, 3189, 3193, 3216, 3238, 3302, 3326, 3457, 3481, 3539, 3563,
  3601, 3627, 3651, 3694, 3940, 4272, 4369, 4385, 4391, 4398, 4434, 4565, 4574,
  4596, 4608, 4645, 4650, 4657, 4717, 4858, 4882, 5017, 5312, 5336, 5579, 5605,
  5636, 5714, 5871, 5918, 5956, 5959, 5989, 6019, 6022, 6035, 6048,
].sort((a, b) => a - b);

const functionsOffsets = [
  0, 1, 2, 5, 1285, 1287, 1458, 1518, 1528, 1531, 1543, 1571, 1588, 1605, 1619,
  1648, 1667, 1723, 1767, 1841, 2001, 2125, 2149, 2158, 2178, 2248, 2281, 2964,
  3245, 3400, 3568, 3656, 3727, 3742, 3776, 3786, 3806, 3893, 3992, 4009, 4045,
  4062, 4096, 4113, 4130, 4147, 4164, 4218, 4279, 4405, 4515, 4533, 4611, 4660,
  4690, 4720, 4799, 4885, 4977, 5360, 5377, 5394, 5411, 5428, 5445, 5721, 5814,
  5823, 5846, 5876, 5893, 5921, 5964, 5990, 6027,
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

  await writeFile('./tools/listing.txt', listing);
}

run().catch((error) => {
  console.error(error);
  process.exit(1);
});
