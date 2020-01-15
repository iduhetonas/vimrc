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
" => Ctags/Gtags
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
au FileType java set omnifunc=javacomplete#Complete
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
" Disable Java checking, as it isn't accurate at this time
" TODO: C++ checking works, but needs to include more libraries
" (e.g.) QApplication isn't found
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['cpp', 'python','haskell'] }

" Best Haskell Syntastic checker
let g:syntastic_haskell_checkers = ['ghc_mod']

" C++ and Qt specific checking
" Checks header files
let g:syntastic_cpp_check_header = 1
" Forces a recheck every time the file is written
let g:syntastic_cpp_auto_refresh_includes = 1
" Include QT Libraries
let g:syntastic_cpp_include_dirs = ['/usr/include/qt4/QtGui']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FSwitch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>h :FSHere <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-slime
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Need to let it be relative to the directory, otherwise
" Vim can't find the tags
set cscoperelative

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-clang-format
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" B&O projects use Webkit
let g:clang_format#code_style = "webkit"
" Consider using :ClangFormatAutoEnable for reformatting on
" buffer rewrites
