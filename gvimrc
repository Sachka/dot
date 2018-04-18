""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                              " macvim options "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Font
set guifont=PragmataPro\ Nerd\ Font\ Complete:h15
" Gui elements
set guioptions-=m   " menu bar
set guioptions-=T   " toolbar
set guioptions-=r   " right scrollbar
set guioptions-=L   " left scrollbar
set gcr=a:blinkon0  " Disable cursor blink
" Option menu elements
macmenu File.Save key=<nop>
macmenu File.Close key=<nop>
macmenu File.Save\ All key=<nop>
macmenu File.Save\ As\.\.\. key=<nop>
macmenu File.New\ Window key=<nop>
macmenu File.Print key=<nop>
macmenu File.Open\.\.\. key=<nop>
macmenu Tools.Make key=<nop>
" macmenu MacVim.Preferences=<nop>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                            " session management "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This options saves last working stuff and launches it by default
 map ZZ :echo "Do not exit like this using MacVim." <CR>
" source ~/.vim/sessions/tmp
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
