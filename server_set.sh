#!/bin/bash

#############################
## zsh, vimrc setting      ##
## By. ujuc (ujuc@ujuc.kr) ##
#############################

function printMessage() {
    echo -e "\e[1;37m# $1\033[0m"
}

function install_git {
    echo ""
    printMessage "install git"
    sudo apt-get install git-core -y
}

function install_zsh {
    echo ""
    printMessage "install zsh"
    sudo apt-get install zsh -y
}

function setting_zsh {
    echo ""
    printMessage "setting_zsh"
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    mkdir ~/.oh-my-zsh/custom/plugins
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git  ~/.oh-my-zsh/custom/plugins
    cat > ~/.zshrc
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-        updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting   for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/  plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git python tmux screen pip zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Color listing
#eval $(dircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

    chsh -s /bin/zsh
    source ~/.zshrc
}

function install_vim {
    echo ""
    pirntMessage "install vim"
    sudo apt-get install vim
}

function setting_vim {
    echo ""
    git clone git://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
}

install_git
install_zsh
setting_zsh
install_vim
setting_vim

echo ""
echo "Discounneted ssh or logout"

