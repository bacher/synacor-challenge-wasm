const CAP = 2 ** 15;

let depth = 0;
let hits = 0;
let saves = 0;

const debug = false;
let tick = 0;
let lastArgs;

function get(memo, a, b) {
  const value = memo.get(a)?.get(b);

  if (value !== undefined) {
    hits++;
  }
  return value;
}

function save(memo, a, b, result) {
  let aa = memo.get(a);

  if (!aa) {
    aa = new Map();
    memo.set(a, aa);
  }

  aa.set(b, result);
  saves++;
}

function func6049(memo, initialA, initialB, magic) {
  lastArgs = [initialA, initialB];

  tick++;

  if (debug) {
    console.log(
      `${tick.toString().padStart(3, ' ')} ${initialA
        .toString()
        .padStart(5, ' ')}  ${initialB}`,
    );

    if (tick === 100) {
      process.exit(10);
    }
  }

  let a = initialA;
  let b = initialB;

  depth++;
  while (a > 0) {
    const memorized = get(memo, initialA, initialB);
    if (memorized !== undefined) {
      depth--;
      return memorized;
    }

    if (b === 0) {
      a--;
      b = magic;
    } else {
      b = func6049(memo, a, b - 1, magic);
      a--;
    }
  }

  a = (b + 1) % CAP;

  depth--;

  save(memo, initialA, initialB, a);

  return a;
}

// const a = parseInt(process.argv[2], 10);
// const b = parseInt(process.argv[3], 10);
// const magic = parseInt(process.argv[4], 10);

const maxA = 4;
const a = 4;
const b = 1;

let lastTime = performance.now();

for (let magic = 1; magic < CAP; magic += 1) {
  const memo = new Map();
  for (let a = 1; a < maxA; a += 1) {
    for (let b = 1; b < CAP; b += 1) {
      func6049(memo, a, b, magic);
    }
  }

  try {
    const result = func6049(memo, a, b, magic);

    if (result === 6) {
      console.log(`SUCCESS ${magic}`); // 25734
      process.exit(0);
    }

    if (magic % 100 === 0) {
      const now = performance.now();
      const delta = now - lastTime;
      lastTime = now;
      console.log(`${magic - 100}...${magic} = ${delta.toFixed(0)}ms`);
    }
  } catch (error) {
    console.log('lastArgs', lastArgs);
    console.error(error.message);
    break;
  }
}

// Do not work, stack overflow happened
function recursiveRecursionCalculation() {
  const maxRetries = 1000;
  const START_AT_AB = [4, 1];

  for (let magic = 1; magic < 2; magic += 1) {
    if (magic % 1000 === 0) {
      console.log(`Iteration ${magic}...${CAP - 1}`);
    }

    const memo = new Map();

    // save(memo, 1, 21039, 21041);
    // save(memo, 2, 10519, 21041);

    let iter = 0;

    lastArgs = [...START_AT_AB];

    while (true) {
      iter++;
      if (maxRetries === iter) {
        console.log(`Reached maximum retries limit: ${maxRetries}`);
        process.exit(10);
      }

      if (iter % 1000 === 0) {
        console.log('iter:', iter);
      }

      const [a, b] = lastArgs;

      try {
        depth = 0;

        const final = func6049(memo, a, b, magic);

        if (a === START_AT_AB[0] && b === START_AT_AB[1]) {
          if (final === 6) {
            console.log(`SUCCESS, magic = ${magic}`);
            process.exit(0);
          } else {
            console.log(`FAILED, `, [a, b, magic], `result:`, final);
          }
          break;
        } else {
          console.log(
            'success complete',
            [a, b, magic],
            'results',
            final,
            'reset to base',
          );
          lastArgs = [...START_AT_AB];
        }
      } catch (error) {
        // console.log(`failed at magic: ${magic}`);

        console.log(
          `${error.message.slice(0, 12)},`,
          'called with:',
          [a, b],
          'failed on',
          lastArgs,
          ` ticks: ${tick}  hits: ${hits}  saves: ${saves}`,
        );
        saves = 0;
        hits = 0;
        tick = 0;
        // console.log('Memo size:', memo.size);
        // console.log('Stack depth:', depth);
        // console.error(error.message);
        // process.exit(1);
      }
    }
  }
}
