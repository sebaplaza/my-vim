#!/bin/bash

REPO_BASE_URL='https://raw.githubusercontent.com/sebaplaza/my-vim/main'

# Install vim-plug
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Download nvim config

curl -flO $HOME/.config/nvim/init.vim --create-dirs $REPO_BASE_URL/init.vim

# and install vim plugins
vim -c ":PlugInstall | qa"

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
