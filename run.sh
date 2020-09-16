#!/bin/bash

# The following program compiles one or all files of a list of languages.
# You can do one of the following:
#                                 (1) Provide a single filename to run - run foo.file.
#                                 (2) Provide a wildcard to run all files - run *.c.
#                                 (3) Provide the argument 'all' which executes the same behaviour as (2).

# In all instances of the command, the appropiate files are created and executed and are then deleted.
if [ "$1"  == "all" ] ; then 
        (ls | grep *.c  ; clang *.c -o a && ./a && rm a) ||
        (ls | grep *.hs ; stack ghc *.hs && ./main && rm main && rm *.o && rm *.hs)
fi

function compileC {
         clang $1 -o a
         ./a   
         rm a
}

function compileHaskell {
        stack ghc $1
        ./Main
        rm Main && rm *.o && rm *.hi
}

function compileJava {        
        javac $1
        java  $1
        rm *.class
}


case "$1" in
        *.c)  compileC $1 ;;
        *.hs) compileHaskell $1 ;;
        *.py) python $1 ;;
        *.rb) ruby $1 ;;
        *java) compileJava $1 ;;
esac
