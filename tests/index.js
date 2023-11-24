import assert from 'assert';
import fs from 'node:fs/promises';
import { instantiate } from '../build/debug.js';

const module = await globalThis.WebAssembly.compile(
  await fs.readFile('build/debug.wasm'),
);

const NEW_LINE_CHAR_CODE = '\n'.charCodeAt(0);

const outputCharBuffer = [];
const inputLines =
  ['look tablet', 'take tablet', 'inv', 'look', 'go '].join('\n') + '\n';
let inputIndex = 0;
let inputBuffer = '';

const { run, readMemory } = await instantiate(module, {
  env: {
    readCharFromHost: () => {
      const char = inputLines[inputIndex];

      if (char === undefined) {
        throw new Error('Input is ended');
      }

      if (char === '\n') {
        console.log(`> ${inputBuffer}`);
        inputBuffer = '';
      } else {
        inputBuffer += char;
      }

      inputIndex += 1;
      return char.charCodeAt(0);
    },
    outputChar: (value) => {
      if (value === NEW_LINE_CHAR_CODE) {
        if (outputCharBuffer.length) {
          console.log(outputCharBuffer.join(''));
          outputCharBuffer.length = 0;
        }
      } else {
        outputCharBuffer.push(String.fromCodePoint(value));
      }
    },
  },
});

// First bit of challenge binary is correct.
assert.strictEqual(readMemory(0), 21);

console.log('[RUN]');

try {
  run();
} catch (error) {
  console.error(`ERROR: ${error.message}`);
}

console.log('[HALT]');
