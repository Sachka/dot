set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

language en_US
set timeoutlen=1000 ttimeoutlen=0
set showcmd!
set termguicolors
colorscheme NeoSolarized

let g:deoplete#enable_at_startup = 1
let g:terminal_color_0 = '#003541'
let g:terminal_color_1 = '#dc322f'
let g:terminal_color_2 = '#859901'
let g:terminal_color_3 = '#b58901'
let g:terminal_color_4 = '#268bd2'
let g:terminal_color_5 = '#d33682'
let g:terminal_color_6 = '#2aa198'
let g:terminal_color_7 = '#eee8d5'
let g:terminal_color_8 = '#002833'
let g:terminal_color_9 = '#cb4b16'
let g:terminal_color_10 = '#586e75'
let g:terminal_color_11 = '#657b83'
let g:terminal_color_12 = '#839496'
let g:terminal_color_13 = '#6c6ec6'
let g:terminal_color_14 = '#93a1a1'
let g:terminal_color_15 = '#fdf6e3'

set guifont='PragmataPro Awesome':h15

if has("gui_vimr")
    nmap <silent> <D-)> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/n0<CR>
    nmap <silent> <D-0> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s0<CR>
    nmap <silent> <D-!> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s1<CR>
    nmap <silent> <D-@> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s2<CR>
    nmap <silent> <D-#> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s3<CR>
    nmap <silent> <D-$> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s4<CR>
    nmap <silent> <D-%> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s5<CR>
    nmap <silent> <D-^> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s6<CR>
    nmap <silent> <D-&> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s7<CR>
    nmap <silent> <D-*> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s8<CR>
    nmap <silent> <D-(> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s9<CR>
    nmap<D-s> :w <CR>
    nmap<D-S> :mksession! ~/.vim/sessions/
    nmap<D-/> <leader>c<space>
    nmap <D-p> :bp<CR>
    nmap <D-n> :bn<CR>
endif
