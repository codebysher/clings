#!/bin/bash
clear
while true; do
    make test
    inotifywait -e modify -r exercises tests >/dev/null 2>&1
    clear
done
