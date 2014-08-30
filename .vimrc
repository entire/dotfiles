
set nocompatible              " be iMproved, required
filetype off                  " required
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/dotfiles/.vim/bundle/Vundle.vim

" set it up in the dotfiles
call vundle#begin('~/dotfiles/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'w0ng/vim-hybrid'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/csapprox'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'klen/python-mode'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'git@github.com:kien/ctrlp.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" Put your non-Plugin stuff after this line

" UI stuff

set number                " show line numbers
set ruler
syntax on
set mouse=a
set smarttab
set expandtab
set shiftround
set background=dark
set nohlsearch
set cul
set laststatus=2
set encoding=utf-8
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set ts=2             " tab spacing
set sts=2         " unify
set sw=2          " indent/outdent by 2 columns
set nocursorcolumn
set ignorecase
set lazyredraw
set showmatch
set incsearch             " But do highlight as you type your search.
set autoread
set background=dark

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" set custom leader
let mapleader="," 


" make it so we doesnt have to deal with stupid powerline fonts
let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

" cursor stuff
let g:SuperTabDefaultCompletionType = "context"

" THIS MAKES VIM COLOR PROPER IN TERMINAL
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
" Colorscheme has to come after the CSApprox setup
colorscheme hybrid

" python mode setup
let g:pymode_folding = 0

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0

