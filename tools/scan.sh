#!/usr/bin/env sh

set -e

echo "Branches:"
grep -E 'jmp|jt|jf' listing.txt | grep -E '\d+\(pc\)' -o | grep -E '\d+' -o

echo "Functions:"
grep -E 'call' listing.txt | grep -E '\d+\(pc\)' -o | grep -E '\d+' -o
