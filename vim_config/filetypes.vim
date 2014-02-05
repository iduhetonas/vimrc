""""""""""""""""""""""""""""""
" C/C++ section
"""""""""""""""""""""""""""""""
au FileType c,cpp set number
au FileType c,cpp set expandtab
au FileType c,cpp set shiftwidth=2
au FileType c,cpp set tabstop=2

"""""""""""""""""""""""""""""
" C++ only section
""""""""""""""""""""""""""""""
au FileType cpp set tags+=$HOME/vimrc/default_tags/cpp_tags


""""""""""""""""""""""""""""""
" Matlab section
"""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.m set number
au BufRead,BufNewFile *.m set expandtab
au BufRead,BufNewFile *.m set shiftwidth=2
au BufRead,BufNewFile *.m set tabstop=2

""""""""""""""""""""""""""""""
" Python section
"""""""""""""""""""""""""""""""
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4 
autocmd BufRead *.py inoremap # X<c-h>#<space>

"""""""""""""""""""""""""""""""
" Makefile section
"""""""""""""""""""""""""""""""
au FileType make setlocal noexpandtab

"""""""""""""""""""""""""""""""
" Haskell section
"""""""""""""""""""""""""""""""
au Filetype *.hs,*.lhs set tabstop=2 expandtab shiftwidth=2 softtabstop=2
