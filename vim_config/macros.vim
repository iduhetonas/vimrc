" Various commands for reference
"" :map  - Display insert and command-line mode maps
"" :map! - Display normal, visual, select and operator pending mode maps
"" :nmap - Display normal mode maps
"" :imap - Display insert mode maps
"" :vmap - Display visual and select mode maps
"" :smap - Display select mode maps
"" :xmap - Display visual mode maps
"" :cmap - Display command-line mode maps
"" :omap - Display operator pending mode maps

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TeeJet Copyright Header
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <silent> <F2> a/**<CR>*<CR>* Copyright TeeJet Technologies <C-R>=strftime('%Y')<CR><CR>*<CR>*<CR>* @file<Space><CR>*<CR>*/<ESC>kkk$a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctags build command.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make sure that you're in the root of the tree of your sourcecode, 
" as Vim is setup to walk up the tree until it finds a tags file. 
"
" Also, this requires directories referenced at the end of the command.
nmap <leader>c :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gtags build command.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Must be in root node (as stated in the Ctags build command) but
" directory referencing is not necessary.
"
" Sets the GTAGSFORCECPP environment variable, to include .h files as well.
nmap <leader>g :!GTAGSFORCECPP="" gtags . && global -t . > ./tags<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TagBarToggle commands.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>t :TagbarToggle<CR>
nmap <silent> <leader>p :TagbarTogglePause<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Matlab commands.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <silent> <F2> :!matlab -nosplash -nodesktop -r "run('%:p')" <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom search command.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap <leader>f :!find . \( ! -regex '.*/.svn/.*' \) \( ! -regex '.*dox.*' \)  \( ! -name BROWSE \) \( ! -name '*~' \)  -type f -print0 | xargs -0 -e grep -nIH -e 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc commands.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ghc-mod commands.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>l :GhcModInfo<CR>
