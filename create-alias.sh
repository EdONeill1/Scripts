#!/bin/sh


# Sets permanent aliases in your shell configuration file.
# The first argument is your alias and the rest is the command in which it points.

# You may need to change the zsh "stuff" to your own shells configuration if you're not running it.

echo "alias $1='${@:2}'" >> ~/.zshrc ; exec zsh
