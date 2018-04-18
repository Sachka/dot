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
" ctrlp.vim
Plug 'ctrlpvim/ctrlp.vim'
" surround.vim
Plug 'tpope/vim-surround'
" repeat.vim
Plug 'tpope/vim-repeat'
" obsession.vim
Plug 'tpope/vim-obsession'
" eunuch.vim
Plug 'tpope/vim-eunuch'
" vinegar.vim
Plug 'tpope/vim-vinegar'
" fugitive.vim
Plug 'tpope/vim-fugitive'
" db.vim
Plug 'tpope/vim-db'
" The-NERD-Commenter
Plug 'scrooloose/nerdcommenter'
" NERDTree
Plug 'scrooloose/nerdtree'
" Evanesco (Automatically clears search highlight)
Plug 'pgdouyon/vim-evanesco'
" Better Whitespace
Plug 'ntpeters/vim-better-whitespace'
" vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'
" vim-airline
Plug 'vim-airline/vim-airline'
" vim-airline themes
Plug 'vim-airline/vim-airline-themes'
" vim-devicons
Plug 'ryanoasis/vim-devicons'
" promptline
Plug 'edkolev/promptline.vim'
" dracula theme
Plug 'dracula/vim'
" NeoSolarized
Plug 'iCyMind/NeoSolarized'
" deoplete
Plug 'Shougo/deoplete.nvim'
" nvim-yarp (deoplete dependency)
Plug 'roxma/nvim-yarp'
" vim-hug-neovim-rpc (deoplete dependency)
Plug 'roxma/vim-hug-neovim-rpc'
" ALE
Plug 'w0rp/ale'
" vim-gitgutter
Plug 'airblade/vim-gitgutter'
" vim-autoformat
Plug 'Chiel92/vim-autoformat'
" vim-pydocstring
Plug 'heavenshell/vim-pydocstring'
" indent-guide
Plug 'Yggdroot/indentLine'
" rainbow parentheses
Plug 'kien/rainbow_parentheses.vim'
" fzf
Plug '/usr/local/opt/fzf'
" window restore
Plug 'vim-scripts/ZoomWin'
" airline clock
Plug 'enricobacis/vim-airline-clock'
" Tagbar
Plug 'majutsushi/tagbar'
" colorizer
Plug 'chrisbra/Colorizer'
" base16
Plug 'chriskempson/base16-vim'
" All Plugins must be added before the following line
"------------------------------------------------------------------------------"
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                " continue? "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/.vim/settings/settings.vim
source $HOME/.vim/settings/colorscheme.vim
source $HOME/.vim/settings/compilation.vim
source $HOME/.vim/settings/mappings.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                            " last priority line "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noshowmode
