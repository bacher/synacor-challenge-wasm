#!/usr/bin/env sh

set -e

npm run build:as:debug
node utils/embed-binary.js
wat2wasm build/debug.embeded.wat --debug-names -o build/debug.wasm
