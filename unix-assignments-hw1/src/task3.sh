#!/usr/bin/env bash
dd if=/dev/urandom of=rnd.txt bs=1 count=$RANDOM
