echo "set runtimepath+=$PWD
let \$MYVIMRCDIR='$PWD'

source $PWD/vim_config/main.vim
source $PWD/vim_config/filetypes.vim
source $PWD/vim_config/plugins.vim
source $PWD/vim_config/macros.vim
" > $HOME/.vimrc

echo "Vimrc installed!"
