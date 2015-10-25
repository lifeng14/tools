#!/bin/bash
function listFiles()
{
  dirlist=$( ls $1 )
	for param in ${dirlist[*]}
	do
		if [ -f $1/$param ]
		then
			echo $1/$param
		elif [ -d $1/$param ]
		then
			listFiles $1/$param
		fi
	done
}
if [ -z "$1" ] 
then
	echo usage: listFiles rootDir
fi
listFiles $1	
