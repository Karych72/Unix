#!/bin/bash

grep -o -E '[ ]*^#[ ]*include[ ]*["<][a-zA-Z./]+[">]$' file.c | 
	sed -r -e 's/^[ ]*#[ ]*include[ ]*["<]([a-zA-Z./]+)[">]$$/\1/'
