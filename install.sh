#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

### Variables ###
 
DIR=~/dotfiles                    # dotfiles directory
OLD_DIR=~/dotfiles_old             # old dotfiles backup directory
FILES=".zshrc .bashrc .vimrc .vim"        # list of files/folders to symlink in homedir
 
### Download packages ###

# install vundle
echo ""
echo "=== Downloading Vundle === "
git clone https://github.com/gmarik/Vundle.vim.git ~/dotfiles/.vim/bundle/Vundle.vim
echo "...done"
echo ""

# install oh my zsh
echo ""
echo "=== Downloading Oh My Zsh ==="
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "...done"
echo ""

# install antigen
echo ""
echo "=== Downloading Antigen ==="
mkdir -p ~/antigen
curl -L git.io/antigen > ~/antigen/antigen.zsh
echo "...done"
echo ""

# create dotfiles_old in homedir
echo ""
echo "Creating $OLD_DIR for backup of any existing dotfiles in ~"
mkdir -p $OLD_DIR
echo "...done"
echo ""

# change to the dotfiles directory
echo ""
echo "Changing to the $DIR directory"
cd $DIR
echo "...done"
echo ""

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
echo ""
for FILE in $FILES; do
    echo "Moving any existing dotfiles from ~ to $OLD_DIR"
    mv ~/$FILE ~/dotfiles_old/
    echo "Creating symlink to $FILE in home directory."
    ln -s $DIR/$FILE ~/$FILE
done
echo ""
