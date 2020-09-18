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

### Ali

This is a command that allows me to create permenant aliases within my shell configuration files. It is set to work with `zsh` so if you're running using another shell, you will have to make the appropiate adjustments. 

To create an alias, you use the flag `-m` then enter the alias name then what the command of the alias.
To delete an alias, you use the flag `-d` then enter the alias name.

```
> ali -m p pwd
> p
/Users/edward
> ali -d p pwd
> p
zsh: command not found: p
```


