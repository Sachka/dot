""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                 " mappings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
noremap <leader># :w !sudo tee % > /dev/null " #POWERSAVE
map Y "+y
nmap gB :bp<CR>
nmap gb :bn<CR>
nnoremap <C-l> :nohl<CR>
nnoremap ; :
nnoremap <C-b> <C-a>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                    " settings / customization mappings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <D-p> :bp<CR>
nmap <D-n> :bn<CR>
nmap <D-w> :bd<CR>
nmap <D-s> :w <CR>
nmap <D-S> :mksession! ~/.vim/sessions/
nmap <silent> <D-h> :execute 'silent !open .' <CR>
nmap <silent> <D-r> :execute 'silent !open /Applications/Utilities/Terminal.app' <CR>
nmap <C-c><C-r> :source ~/.vimrc <BAR> :nohl <BAR> AirlineRefresh <BAR> :echo "RELOADED" <CR>
nmap <C-c><C-u> :edit<BAR> :AirlineRefresh<CR>
nmap <C-c>s :setlocal spell!<cr>
nmap <C-c>1 :color solarized <BAR> AirlineTheme solarized <BAR> set background=light <CR>
nmap <C-c>2 :color solarized <BAR> AirlineTheme solarized <BAR> set background=dark <CR>
nmap <C-c>3 :color dracula <BAR> AirlineTheme dracula <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-x><C-w> :bd<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                   " 3rd "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <C-m> :NERDTreeToggle<CR>

nnoremap <silent> <F12> :TagbarToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                            " session management "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
set ssop-=helps      " do not store help messages
nmap <silent> <D-)> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s0<CR>
nmap <silent> <D-!> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s1<CR>
nmap <silent> <D-@> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s2<CR>
nmap <silent> <D-#> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s3<CR>
nmap <silent> <D-$> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s4<CR>
nmap <silent> <D-%> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s5<CR>
nmap <silent> <D-^> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s6<CR>
nmap <silent> <D-&> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s7<CR>
nmap <silent> <D-*> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s8<CR>
nmap <silent> <D-(> :execute 'silent! %bwipeout!' <BAR> source ~/.vim/sessions/s9<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <D-1> <Plug>AirlineSelectTab1
nmap <D-2> <Plug>AirlineSelectTab2
nmap <D-3> <Plug>AirlineSelectTab3
nmap <D-4> <Plug>AirlineSelectTab4
nmap <D-5> <Plug>AirlineSelectTab5
nmap <D-6> <Plug>AirlineSelectTab6
nmap <D-7> <Plug>AirlineSelectTab7
nmap <D-8> <Plug>AirlineSelectTab8
nmap <D-9> <Plug>AirlineSelectTab9
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                    " emacs keybindings for insert mode "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"inoremap <C-P> <Up>
inoremap <C-N> <Down>
inoremap <C-a> <Home>
inoremap <C-b> <Left>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-X><C-S> <Esc>:w<CR>a
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

