#!/bin/bash

grep -Ps "^[A-Z][0-9a-zA-Z]*[ ]+(m_)?[a-z][0-9a-zA-Z]*_?;" "$1"
