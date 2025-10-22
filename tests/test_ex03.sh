#!/usr/bin/env bash
set -e
mkdir -p build
gcc exercises/ex03_sum.c -o build/ex03_sum

output=$(echo "4 6" | ./build/ex03_sum | tr -d '\r')

if [[ "$output" == "10" ]]; then
  echo "✅ ex03_sum passed!"
else
  echo "❌ ex03_sum failed!"
  echo "Expected: 10"
  echo "Got: $output"
  exit 1
fi
