""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                 " mappings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
" cool yanking
map Y "+y
" spelling toggle
map <C-c>s :setlocal spell!<cr>
" source loading
nmap <C-c><C-r> :echo "RELOADING..." <BAR> source ~/.vimrc <BAR> :nohl <BAR> AirlineRefresh <CR>
" set transparent mode and background
nmap <C-c>1 :color solarized <BAR> AirlineTheme solarized <BAR> set background=light <CR>
nmap <C-c>2 :color solarized <BAR> AirlineTheme solarized <BAR> set background=dark <BAR> hi CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=#839496<CR>
nmap <C-c>3 :color dracula <BAR> AirlineTheme dracula <CR>
" reload file
nmap <C-c><C-u> :edit<BAR> :AirlineRefresh<CR>
" previous buffer
nmap gB :bp<CR>
nmap <D-p> :bp<CR>
nmap π :bp<CR>
" next buffer
nmap gw <C-w>w<cr>
nmap gb :bn<CR>
nmap <D-n> :bn<CR>
nmap ˜ :bn<CR>
" close buffer
nmap <D-w> :bd<CR>
" powersaves
noremap <leader># :w !sudo tee % > /dev/null
" no hightlight
nnoremap <C-l> :nohl<CR>
" faster access to :
nnoremap ; :
" tmux compatibility
nnoremap <C-b> <C-a>
" take a theme screenshot
nmap <leader>P :PromptlineSnapshot! ~/.shell_prompt.sh airline <CR>
" save the game
nmap<D-s> :w <CR>
" save the session
nmap<D-S> :mksession! ~/.vim/sessions/
nmap<D-/> <leader>c<space>
nmap<C-c><C-c> <leader>c<space>
" go home
nmap <silent> <D-h> :execute 'silent !open .' <CR>
" open Terminal
nmap <silent> <D-r> :execute 'silent !open /Applications/Utilities/Terminal.app' <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                            " session management "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
set ssop-=helps      " do not store help messages
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

