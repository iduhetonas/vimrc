""""""""""""""""""""""""""""""
" C and C++ section
"""""""""""""""""""""""""""""""
au FileType c,cpp set number
au FileType c,cpp set expandtab
au FileType c,cpp set shiftwidth=2
au FileType c,cpp set tabstop=2
au FileType c,cpp set foldmethod=syntax
au FileType c,cpp normal zR

""""""""""""""""""""""""""""""
" Matlab section
"""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.m set number
au BufRead,BufNewFile *.m set expandtab
au BufRead,BufNewFile *.m set shiftwidth=2
au BufRead,BufNewFile *.m set tabstop=2
map <silent> <F2> :!matlab -nodisplay -nosplash -nodesktop -r "run('%:p')" <CR>

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
au Filetype haskell,lhaskell,cabal set tabstop=2 expandtab shiftwidth=2 softtabstop=2

"""""""""""""""""""""""""""""""
" C# section
"""""""""""""""""""""""""""""""
if has("win32")
    " C# will likely just be on Window
    if !exists("autocommands_loaded")
        let autocommands_loaded = 1

        " setup folding
        autocmd BufNewFile,BufRead *.cs set foldmethod=syntax
    endif
endif
