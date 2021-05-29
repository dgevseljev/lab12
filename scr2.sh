#!/bin/bash

gcc 2.c

./a.out

case $? in
	0) echo pos;;
	1) echo neg;;
	2) echo null
esac