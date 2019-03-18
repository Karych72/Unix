#!/usr/bin/env bash

find . -type f -name "*.txt" | sed -e 's%^\(\./[^/]*/\).*$%\1%' -e 's%^\.\/[^/]*$%./%' | sort | uniq -c |  wc -l

