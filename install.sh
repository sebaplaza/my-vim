#!/bin/bash

REPO_BASE_URL='https://raw.githubusercontent.com/sebaplaza/my-vim/main'

# Install vim-plug
echo Installing vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Download nvim config
echo Downloading nvim config
NVIM_CONFIG_URL=$REPO_BASE_URL/init.vim
curl --create-dirs -O --output-dir $HOME/.config/nvim/ $NVIM_CONFIG_URL

# and install vim plugins
echo Installing plugins
nvim -c ":PlugInstall | qa"

# Install fzf
# echo Installing FZF
# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
