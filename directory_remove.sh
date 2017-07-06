#!/usr/bin/bash
DIR=$1

if [[ -d $DIR ]]
then
  echo "deleting $DIR directory"
  rmdir -r $DIR
else
 echo "$DIR directory does not exists"
fi
