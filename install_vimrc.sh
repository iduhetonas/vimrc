echo "set runtimepath+=$PWD

runtime $PWD/bundle/vim-pathogen/autoload/pathogen.vim

source $PWD/vim_config/main.vim
source $PWD/vim_config/filetypes.vim
source $PWD/vim_config/plugins.vim
" > $HOME/.vimrc
git submodule init
git submodule update

if hash cabal 2>/dev/null; then
    # Install ghcmod
    cd bundle/ghcmod-vim/
    source install-deps.sh
else
    # Cabal not installed
    echo "cabal-install not found, disabling ghcmod-vim."
fi

# This won't work on Windows,
# so change this to not happen on Windows
make 

echo "Vimrc installed!"
