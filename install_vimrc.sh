echo "set runtimepath+=$PWD

runtime $PWD/bundle/vim-pathogen/autoload/pathogen.vim

source $PWD/vim_config/main.vim
source $PWD/vim_config/filetypes.vim
source $PWD/vim_config/plugins.vim
" > $HOME/.vimrc
git submodule init
git submodule update
echo "Vimrc installed!"
