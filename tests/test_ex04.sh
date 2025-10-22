#!/usr/bin/env bash
set -e
mkdir -p build
gcc exercises/ex04_calculator.c -o build/ex04_calculator

output=$(echo "9 2" | ./build/ex04_calculator | tr -d '\r')

if echo "$output" | grep -q "Sum: 11" && echo "$output" | grep -q "Difference: 7"; then
  echo "✅ ex04_calculator passed!"
else
  echo "❌ ex04_calculator failed!"
  echo "Expected output to contain:"
  echo "Sum: 11"
  echo "Difference: 7"
  echo "Got:"
  echo "$output"
  exit 1
fi
