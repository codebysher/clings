#!/usr/bin/env bash
set -e
mkdir -p build
gcc exercises/ex02_greeting.c -o build/ex02_greeting

output=$(echo "Bob" | ./build/ex02_greeting | tail -n 1 | tr -d '\r')

if [[ "$output" == "Hello, Bob!"* ]]; then
  echo "✅ ex02_greeting passed!"
else
  echo "❌ ex02_greeting failed!"
  echo "Expected: Hello, Bob!"
  echo "Got: $output"
  exit 1
fi
