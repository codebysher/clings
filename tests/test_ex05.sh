#!/usr/bin/env bash
set -e
mkdir -p build
gcc exercises/ex05_temperature.c -o build/ex05_temperature

output=$(echo "100" | ./build/ex05_temperature | tr -d '\r')

if [[ "$output" == "212.0" ]]; then
  echo "✅ ex05_temperature passed!"
else
  echo "❌ ex05_temperature failed!"
  echo "Expected: 212.0"
  echo "Got: $output"
  exit 1
fi
