import { readFile, writeFile } from 'node:fs/promises';
import { chunk } from 'lodash-es';

const LINE_SIZE = 512;

async function run() {
  const buffer = await readFile('./challenge/challenge.bin');

  const list = [];

  for (let i = 0; i < buffer.length; i += 1) {
    const byte = buffer[i];
    list.push(`\\${byte.toString(16).padStart(2, '0')}`);
  }

  const lines = chunk(list, LINE_SIZE);

  const dataLines = lines.map((line, i) => {
    return `(data (i32.const ${i * LINE_SIZE}) "${line.join('')}")`;
  });

  const dataSection = dataLines.join('\n') + '\n';

  // await writeFile('./build/challenge.wat', dataSection);

  const debugWat = await readFile('./build/debug.wat', 'utf-8');

  const start = debugWat.slice(0, debugWat.length - 2);

  const output = `${start}${dataSection})`;

  await writeFile('./build/debug.embeded.wat', output);
}

run().catch((error) => {
  console.error(error);
  process.exit(1);
});
