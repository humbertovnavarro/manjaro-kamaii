#!/bin/bash
if [ -d "$HOME/.oh-my-zsh" ] 
then
    echo "Oh my zsh installed. Skipping..." 
else
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
sudo ./preinstall.sh
sudo pacman -R - < conflicts.txt
sudo pacman -S - < arch_repo.txt
echo "Downloading and compiling aur packages, this is going to take a while"
./yay.sh
sudo ./postinstall.sh
