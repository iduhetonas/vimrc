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
sudo apt-get install build-essential cmake python-dev
source install.sh --clang-completer --omnisharp-completer

if hash cabal 2>/dev/null; then
    # Install ghcmod
    cd ../bundle/ghcmod-vim/
    source install-deps.sh
else
    # Cabal not installed
    echo "cabal-install not found, disabling ghcmod-vim."
fi

echo "Vimrc installed!"
