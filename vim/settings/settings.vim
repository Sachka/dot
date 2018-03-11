""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                 " Settings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype
filetype indent plugin on
" syntax highlighting
syntax enable
" sanely reset options when re-sourcing .vimrc
set nocompatible
" line numbers
set number
" relative line numbers
set relativenumber
" cursor line
set cursorline
" hidden (buffers remain alive)
set hidden
" better command-line completion
set wildmenu
" don't show commands
set noshowcmd
" highlight search
set hlsearch
" don't show mode line
set nomodeline
" use case insensitive search, except when using capital letters
set ignorecase
" use smart case
set smartcase
" keep the same indent as the line you're currently on
set autoindent
" stop certain movements from always going to the first character of a line.
set nostartofline
" display the cursor position on the last line of the screen
set ruler
" dialogue asking if you wish to save changed files.
set confirm
" use visual bell instead of beeping when doing something wrong
set visualbell
" encoding
set encoding=utf8
" show statusline
set laststatus=2
" 256 colors (Use this setting only if your terminal supports 256 colors)
set t_Co=256
" vim will neither flash nor beep. If visualbell is unset, this does nothing.
set t_vb=
" enable use of the mouse for all modes
set mouse=a
" allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
" quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
" display a sign column
set signcolumn=yes
" shif width
set shiftwidth=4
" soft tab stop
set softtabstop=4
" expand tab
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
"let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.branch = "\uE0A0"
let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.notexists = '»'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
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
"let g:airline#extensions#tabline#excludes = []
"let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " # of splits (default)
"let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
let g:airline#extensions#tabline#buffer_nr_show = 0
"let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
"let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#cursormode#enabled = 1
let g:airline#extensions#tabline#fnametruncate = 20
let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '',
        \ '1': '',
        \ '2': '',
        \ '3': '',
        \ '4': '',
        \ '5': '',
        \ '6': '',
        \ '7': '',
        \ '8': '',
        \ '9': ''
        \}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                  " Other "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" deoplete
let g:deoplete#enable_at_startup = 1
" ctrlp
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
" ale
let g:ale_completion_enabled = 1
"let b:ale_linters = ['yapf']
"let b:ale_fixers = ['autopep8']
let g:ale_fixers = {
\   'python': ['autopep8'],
\}
let g:ale_linterss = {
\   'python': ['yapf'],
\}
"let g:ale_lint_on_text_changed = 'always'
"let g:ale_lint_delay = 10
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0
"let g:ale_sign_error = '•'
"let g:ale_sign_warning = '•'
"let g:ale_sign_error = '•'
"let g:ale_sign_warning = '!'
"let g:ale_sign_error = "◉"
"let g:ale_sign_warning = "◉"
"highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#dc322f guibg=#586e75
"highlight ALEWarningSign ctermfg=1 ctermbg=15 guifg=#b58900 guibg=#586e75
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" gitgutter
let g:gitgutter_signs = 0
let g:gitgutter_override_sign_column_highlight = 0
