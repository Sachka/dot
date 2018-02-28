""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                              " MacVim Options "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Font
set guifont=PragmataPro\ Awesome:h15
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
