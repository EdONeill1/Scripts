# Scripts

A collection of scripts that I find interesting or have helped me in some way.

To make any script a permanent command, move the script to your `/usr/local/bin`. 
It's not completely necessary to remove .sh from the files, they were added for organisation on my machine. I have them copied to the above directory without the suffix.

### Covid

Covid is a script that displays the current data of Ireland and France and how they're doing in relation to the pandemic. 

It is run by executing the command `covid` followed by no command line arguments.

### Run

Since I program a lot in Haskell, `run` is a command that lets me not type `stack ghc foo.hs` everytime I want to compile a program. It compiles it for me and executes it for me with the one command `run foo.hs` or all Haskell files with `run all`. I extended it to work with C also.

It is run by executing the command `run foo.bar` or `run all`.

### Create-Alias

This is a command that allows me to create permenant aliases within my shell configuration files. It is set to work with `zsh` so if you're running using another shell, you will have to make the appropiate adjustments. 

It is run by executing the command `create-alias x y`. This takes the first argument `x` and uses it as the alias for the second argument, the command `y`. `y` doesn't have to be exactly a single command. It can be one or many arguments. For example the two uses of the function are both valid.

```
> create-alias a pwd
> a
/usr/local/bin

> create-alias a echo "Hello World"
> a
Hello World
```
