""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                 " settings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype indent plugin on
syntax enable
set nocompatible
set number
set relativenumber
set cursorline
set hidden
set wildmenu
set noshowcmd
set hlsearch
set nomodeline
set ignorecase
set smartcase
set autoindent
set nostartofline
set ruler
set confirm
set visualbell
set encoding=utf8
set laststatus=2
set t_Co=256
set t_vb=
set mouse=a
set backspace=indent,eol,start
set notimeout ttimeout ttimeoutlen=200
set signcolumn=yes
set shiftwidth=4
set softtabstop=4
set expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                           " vim-airline settings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_left_alt_sep = ''
"let g:airline_left_sep = "\uE0C6"
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline_right_sep = "\uE0C7"
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.maxlinenr = ' ␤'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.branch = "\uE0A0"
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.notexists = '»'
let g:airline_symbols.whitespace= 'Ξ'
let g:airline_symbols.maxlinenr= ''
let g:airline_powerline_fonts = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#cursormode#enabled = 1
let g:airline#extensions#tabline#fnametruncate = 20
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '0 ',
        \ '1': '1 ',
        \ '2': '2 ',
        \ '3': '3 ',
        \ '4': '4 ',
        \ '5': '5 ',
        \ '6': '6 ',
        \ '7': '7 ',
        \ '8': '8 ',
        \ '9': '9 '
        \}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                  " other "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ale_completion_enabled = 1
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:gitgutter_signs = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:tagbar_autofocus = 1
