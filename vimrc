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
call plug#begin()
"------------------------------------------------------------------------------"
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
endif
" ctrlp
Plug 'ctrlpvim/ctrlp.vim'
" surround
Plug 'tpope/vim-surround'
" The-NERD-Commenter
Plug 'scrooloose/nerdcommenter'
" Evanesco (Automatically clears search highlight)
Plug 'pgdouyon/vim-evanesco'
" Better Whitespace
Plug 'ntpeters/vim-better-whitespace'
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
Plug 'ashisha/image.vim'
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
"Fugitive
Plug 'https://github.com/tpope/vim-fugitive.git'
" NeoSolarized
Plug 'iCyMind/NeoSolarized'

Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'w0rp/ale'

Plug 'airblade/vim-gitgutter'

" All Plugins must be added before the following line
"
"------------------------------------------------------------------------------"
call plug#end()            " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                            " personal settings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" solarized current line number color in macvim
"hi CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=#b58900
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
let g:airline#extensions#ale#enabled = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:deoplete#enable_at_startup = 1
let g:ale_completion_enabled = 1
let b:ale_linters = ['flake8']
let b:ale_fixers = ['autopep8']
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
"let g:ale_sign_error = '•'
"let g:ale_sign_warning = '•'
"let g:ale_sign_error = '•'
"let g:ale_sign_warning = '!'
"let g:ale_sign_error = "◉"
"let g:ale_sign_warning = "◉"
"highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#dc322f guibg=#586e75
"highlight ALEWarningSign ctermfg=1 ctermbg=15 guifg=#b58900 guibg=#586e75
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:gitgutter_signs = 0
let g:gitgutter_override_sign_column_highlight = 0
set signcolumn=yes

"let g:ale_lint_on_text_changed = 'always'
"let g:ale_lint_delay = 10
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                " continue? "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/settings/colorscheme.vim
source ~/.vim/settings/compilation.vim
source ~/.vim/settings/mappings.vim
hi CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=#839496
hi SignColumn guibg=#002b36
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                             " last priority line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" don't display current mode (requires last priority)
set noshowmode
