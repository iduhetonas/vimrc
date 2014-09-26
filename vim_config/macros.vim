" :map! - Display insert and command-line mode maps
" :map! - Display normal, visual, select and operator pending mode maps
" :nmap - Display normal mode maps
" :imap - Display insert mode maps
" :vmap - Display visual and select mode maps
" :smap - Display select mode maps
" :xmap - Display visual mode maps
" :cmap - Display command-line mode maps
" :omap - Display operator pending mode maps

" Mapping for the TeeJet Copyright Header
"map <silent> <F2> a/**<CR>*<CR>* Copyright TeeJet Technologies <C-R>=strftime('%Y')<CR><CR>*<CR>*<CR>* @file<Space><CR>*<CR>*/<ESC>kkk$a
"map <F2> :echo 'Current time is ' . strftime('%c')<CR>
map <F3> a<C-R>=strftime('%c')<CR><Esc>

