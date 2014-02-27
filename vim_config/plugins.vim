"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("win16") || has("win32")
    let g:tagbar_ctags_bin = 'C:\\ctags\\ctags.exe'
    let Tlist_Ctags_Cmd='C:\\ctags\\ctags.exe'
endif
let g:tagbar_left = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctags 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets the tags file to the first directory.
" If not found, walk up until tags file is found.
set tags=./tags;/


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => OmniCppComplete 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Source: http://vim.wikia.com/wiki/C%2B%2B_code_completion

au FileType cpp set tags+=$HOME/vimrc/default_tags/cpp_tags
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable C++ and Literate Haskell checking, as it isn't accurate at this time
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['cpp', 'java'] }

" Best Haskell Syntastic checker
let g:syntastic_haskell_checkers = ['ghc_mod']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ghcmod-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" There are tons more commands I can add, see :Ghc<TAB> and whatnot
au FileType haskell nnoremap <buffer> <silent> <F2> :GhcModType<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :GhcModTypeClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F4> :GhcModInfo<CR>
au FileType haskell nnoremap <buffer> <silent> <F5> :GhcModCheck<CR>
au FileType haskell nnoremap <buffer> <silent> <F6> :GhcModLint<CR>
