
CC = gcc
CFLAGS = -Wall -Wextra -std=c11
CHECK_LIBS = -lcheck -lm -lpthread -lrt -lsubunit

EXERCISES = ex01 ex02 ex03 ex04 ex05

all: test

test:
	@for ex in $(EXERCISES); do \
		echo "🔍 Testing $$ex..."; \
		gcc $(CFLAGS) tests/test_$$ex.c -o test_$$ex $(CHECK_LIBS) && ./test_$$ex || exit 1; \
	done
	@echo "✅ All tests passed!"

clean:
	rm -f test_*
