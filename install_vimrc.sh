echo "set runtimepath+=$PWD

runtime $PWD/bundle/vim-pathogen/autoload/pathogen.vim

source $PWD/vim_config/main.vim
source $PWD/vim_config/filetypes.vim
source $PWD/vim_config/plugins.vim
" > $HOME/.vimrc
git submodule init
git submodule update --init --recursive

# This installs YouCompleteMe
# TODO: Make sure that the Vim version is correct
cd bundle/youcompleteme
# TODO: Ubuntu-specific
sudo apt-get install build-essential cmake python-dev
source install.sh --clang-completer --omnisharp-completer

echo "Vimrc installed!"
