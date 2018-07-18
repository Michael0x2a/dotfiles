# dotfiles
My personal dotfiles and config info

## Usage

To install, run the following:

    $ cd ~
    $ wget https://raw.githubusercontent.com/Michael0x2a/dotfiles/master/dotfiles/.vimrc
    $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    $ vim +PluginInstall +qall
    $ mkdir ~/.vim_backup

## About

This repo is loosely inspired by [this article][0] by Michael Smalley describing how to use git to manage your dotfiles and various other config files.

I currently do not have any sort of automated symlink system as described in article set up yet -- this repo is currently a raw dump of different dotfiles as I slowly move them over.

Because I develop on both Windows _and_ Linux, I'm still working out how to best maintain feature parity between the two.

  [0]: http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

## Misc notes about setup on macs

The system-install of Vim isn't compiled with clipboard support, among other things. To fix, install vim using Homebrew.

Install that and add `alias vim="...path..."` in `.bash_profile`.
