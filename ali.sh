#!/bin/sh


# Sets permanent aliases in your shell configuration file.
# The first argument is your alias and the rest is the command in which it points.

# You may need to change the zsh "stuff" to your own shells configuration if you're not running it.

# To create an alias : ali -m ALIAS_NAME COMMAND
# To delete an alias : ali -d ALIAS_NAME

while getopts "md:" OPTION
        do
                case $OPTION in
                        m)
                                echo "alias $2='${@:3}'" >> ~/.zshrc
                                exec zsh
                                echo "Alias created successfully!"
                                exit
                                ;;
                        d)
                                grep -F -v "$2=" ~/.zshrc > ~/.zshrc.tmp
                                mv ~/.zshrc.tmp ~/.zshrc
                                exec zsh
                                exit
                                ;;
                esac
        done
