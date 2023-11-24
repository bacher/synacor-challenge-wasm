import assert from 'assert';
import { run, readMemory } from '../build/debug.js';

// First bit of challenge is correct.
assert.strictEqual(readMemory(0), 21);

// works
run();

console.log('ok');
