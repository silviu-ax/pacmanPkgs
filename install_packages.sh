#!/bin/bash

# Read each line from the txt file and install the packages using pacman
while IFS= read -r package
do
    sudo pacman -S --noconfirm "$package"
done < pkglist.txt
