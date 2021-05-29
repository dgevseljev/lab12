#!/bin/bash

name=1
n=$1

while (($name!=(($n+1))))
do
	touch $name.tmp
	((name+=1))
done
name=1
echo "$n files created. delete them?"
read d
if ((d==1))
then while (($name!=($n+1)))
do
	rm $name.tmp
	echo "${name}.tmp has been deleted"
	((name+=1))
	done
fi
	