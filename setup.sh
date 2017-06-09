#!/bin/bash

which xcodesnippet > /dev/null 2>&1
if [ $? == 0 ]; then
    echo "xcodesnippet is exist"
else
    echo "Installing the required modules"
    sudo gem install xcodesnippet
fi

function walk() {  
  for file in `ls $1`  
  do  
    local path=$file  
    if [ -d $path ]  
    then  
      echo "DIR ---- $path"  
      walk $path  
    else  
        echo "FILE -- $path"  
        if [ `basename $filename .m` != $filename ] ; then 
            codesnippet install $filename
        else 
            echo $filename
        fi  
    fi  
  done  
}  
   
if [ $0 -ne 1 ]  
then  
  echo "USAGE: $0 TOP_DIR"  
else  
  walk $1  
fi 
 