"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CTAGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("win16") || has("win32")
    let g:tagbar_ctags_bin = 'C:\\ctags\\ctags.exe'
    let Tlist_Ctags_Cmd='C:\\ctags\\ctags.exe'
endif
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
