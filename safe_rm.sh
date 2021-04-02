#!/bin/sh

echo "Are you sure you want to delete files : $@?  [y/n]"

read choice

if [[ $choice == "y" ]]
then 
        rm -rf $@
elif [[ $choice == "n" ]]
then
        echo "Files will not be deleted"
else
        echo "Invalid Input"
        echo "Exiting..."
fi



