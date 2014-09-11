" :map! - Display insert and command-line mode maps
" :map! - Display normal, visual, select and operator pending mode maps
" :nmap - Display normal mode maps
" :imap - Display insert mode maps
" :vmap - Display visual and select mode maps
" :smap - Display select mode maps
" :xmap - Display visual mode maps
" :cmap - Display command-line mode maps
" :omap - Display operator pending mode maps
map <F2> :echo 'Current time is ' . strftime('%c')<CR>
map <F3> a<C-R>=strftime('%c')<CR><Esc>

