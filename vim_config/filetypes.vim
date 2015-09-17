""""""""""""""""""""""""""""""
" C and C++ section
"""""""""""""""""""""""""""""""
au FileType c,cpp set number
au FileType c,cpp set expandtab
au FileType c,cpp set shiftwidth=2
au FileType c,cpp set tabstop=2
au FileType c,cpp set foldmethod=syntax
au FileType c,cpp set foldlevel=20
au BufNewFile *.c 0r  $MYVIMRCDIR/templates/skeleton.c
autocmd BufNewFile *.h call NewHeaderFile()

" Function to take the current name of the file,
" and place it into the #ifndef NAME_H ... etc 
" syntax
function! NewHeaderFile()
    silent! 0r $MYVIMRCDIR/templates/skeleton.h
    %s/FILENAME/\=expand("%:t:r")
    %s/\w\+_H/\U&
endfunction

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
" For some reason, this command is a huge pain for switching from .py files
"autocmd BufRead *.py inoremap # X<c-h>#<space>

"""""""""""""""""""""""""""""""
" Makefile section
"""""""""""""""""""""""""""""""
au FileType make setlocal noexpandtab

"""""""""""""""""""""""""""""""
" Haskell section
"""""""""""""""""""""""""""""""
au Filetype haskell,lhaskell,cabal set tabstop=2 expandtab shiftwidth=2 softtabstop=2
au FileType haskell nnoremap <buffer> <F2> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F4> :HdevtoolsInfo<CR>
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


"""""""""""""""""""""""""""""""
" Javascript section
"""""""""""""""""""""""""""""""
au Filetype javascript set number expandtab shiftwidth=2 tabstop=2

"""""""""""""""""""""""""""""""
" Arduino section
"""""""""""""""""""""""""""""""
au Filetype *.ino set syntax=c

"""""""""""""""""""""""""""""""
" Bash section
"""""""""""""""""""""""""""""""
au BufNewFile *.sh 0r  $MYVIMRCDIR/templates/skeleton.sh
