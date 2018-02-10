""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                              " Hermes' .vimrc "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug autoinstall
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                               " NEOVIM SETUP "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
     " foo bar
     "
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
"------------------------------------------------------------------------------"
" ctrlp
Plug '/kien/ctrlp.vim'
" surround
Plug 'tpope/vim-surround'
" The-NERD-Tree
"Plug 'The-NERD-Tree' GETS BROKEN WITH SESSION MANAGEMENT
" The-NERD-Commenter
Plug 'scrooloose/nerdcommenter'
" Syntastic THIS IS SYNCHRONOUS, DEPRECATED
"Plug 'Syntastic'
" deoplete
Plug 'Shougo/deoplete.nvim'
" Evanesco (Automatically clears search highlight)
Plug 'pgdouyon/vim-evanesco'
" Better Whitespace
Plug 'ntpeters/vim-better-whitespace'
" taboo
"Plug 'gcmt/taboo.vim'
" vim-multiple-cursors
Plug 'https://github.com/terryma/vim-multiple-cursors.git'
" vim-airline
Plug 'vim-airline/vim-airline'
" vim-airline themes
Plug 'vim-airline/vim-airline-themes'
" vim-devicons
Plug 'ryanoasis/vim-devicons'
" Promptline
Plug 'edkolev/promptline.vim'
" repeat.vim
Plug 'tpope/vim-repeat'
" vim image
"Plug 'ashisha/image.vim'
" Swift syntax
Plug 'https://github.com/keith/swift.vim.git'
" Dracula Theme
Plug 'dracula/vim'
"Obsession
Plug 'https://github.com/tpope/vim-obsession.git'
"Eunuch
Plug 'https://github.com/tpope/vim-eunuch.git'
"Vinegar
Plug 'https://github.com/tpope/vim-vinegar.git'
" Autopep8
Plug 'minamorl/autopep8.vim'
" vim-hug-neovim-rpc
Plug 'roxma/vim-hug-neovim-rpc'
" NeoSolarized
Plug 'iCyMind/NeoSolarized'
" All Plugins must be added before the following line
"
"
"------------------------------------------------------------------------------"
call plug#end()            " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                            " personal settings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" solarized current line number color
hi CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=#b58900
" encoding
set encoding=utf8
" show statusline
set laststatus=2
" 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
" line numbers
set number
" relative line numbers
set relativenumber
" enable cursor line
set cursorline
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
" syntax highlighting
syntax enable
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                              " more settings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" re-use the same window and switch from an unsaved buffer without saving it
" first
set hidden
" better command-line completion
set wildmenu
" show partial commands in the last line of the screen
" set showcmd
" highlight searches
set hlsearch
" it may be a good idea to disable them and use the securemodelines
set nomodeline
" use case insensitive search, except when using capital letters
set ignorecase
" use smart case
set smartcase
" allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
" keep the same indent as the line you're currently on. Useful for READMEs.
set autoindent
" stop certain movements from always going to the first character of a line.
set nostartofline
" display the cursor position on the last line of the screen
set ruler
" dialogue asking if you wish to save changed files.
set confirm
" use visual bell instead of beeping when doing something wrong
set visualbell
" vim will neither flash nor beep. If visualbell is unset, this does nothing.
set t_vb=
" enable use of the mouse for all modes
"set mouse=a
" set the command window height to 2 lines.
"set cmdheight=2
" quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
" indentation settings according to personal preference.
set shiftwidth=4
set softtabstop=4
set expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                 " mappings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" multiple cursor vscode
"map <D-d> <C-n> Does not really work
" cool yanking
map Y "+y
" spelling toggle
map <C-c>s :setlocal spell!<cr>
" source loading
nmap <C-c><C-r> :source ~/.vimrc <BAR> :nohl <BAR> AirlineRefresh <CR>
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
" go home
nmap <silent> <D-h> :execute 'silent !open .' <CR>
" open Terminal
nmap <silent> <D-r> :execute 'silent !open /Applications/Utilities/Terminal.app' <CR>
" movement between lines
"nmap <leader>% :map j gj | :map k gk<CR>
" Autopep8 map
autocmd FileType python nnoremap <buffer> <silent> <leader>f :call autopep8#clean()<CR>
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
inoremap ƒ <ESC>ea
inoremap ∫ <ESC>ba
inoremap <C-P> <Up>
inoremap <C-N> <Down>
inoremap <C-a> <Home>
inoremap <C-b> <Left>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-k> <Esc>lDa
inoremap <C-u> <Esc>d0xi
inoremap <C-y> <Esc>Pa
inoremap <C-X><C-S> <Esc>:w<CR>a
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                            " vim-airline settings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_left_sep = ''
"let g:airline_left_sep = "\uE0C6"
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_right_sep = ''
"let g:airline_right_sep = "\uE0C7"
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.maxlinenr = ' ␤'
"let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.branch = "\uE0A0"
let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace= 'Ξ'
let g:airline_symbols.maxlinenr= ''
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#excludes = []
"let g:airline#extensions#tabline#exclude_preview = 1
"let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
"let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
let g:airline#extensions#tabline#show_tab_nr = 0
"let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s: '
"let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#show_close_button = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                " continue? "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/settings/colorscheme.vim
source ~/.vim/settings/compilation.vim
hi CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=#839496
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                             " last priority line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" don't display current mode (requires last priority)
set noshowmode
" end of script?
