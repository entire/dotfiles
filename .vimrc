
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
Plugin 'Shougo/neocomplcache'
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
set ignorecase
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 2 columns
set nocursorcolumn
set ignorecase
set showmatch
set incsearch             " But do highlight as you type your search.
set autoread


let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

set background=dark

" THIS MAKES VIM COLOR PROPER IN TERMINAL
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme hybrid

" setup neocomplcache
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1

" python mode setup
let g:pymode_folding = 0
