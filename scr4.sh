#!/bin/bash

find $2 -mtime -7 > forbackup.txt

tar czf $1 forbackup.txt

rm forbackup.txt