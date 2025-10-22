#!/usr/bin/env bash
set -e
mkdir -p build
gcc exercises/ex01_hello.c -o build/ex01_hello

output=$(./build/ex01_hello | tr -d '\r')

if [[ "$output" == "Hello, World!"* ]]; then
  echo "✅ ex01_hello passed!"
else
  echo "❌ ex01_hello failed!"
  echo "Expected: Hello, World!"
  echo "Got: $output"
  exit 1
fi
