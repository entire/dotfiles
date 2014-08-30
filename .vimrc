
set nocompatible              " be iMproved, required
filetype off                  " required
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/dotfiles/.vim/bundle/Vundle.vim
call vundle#begin('~/dotfiles/.vim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'bling/vim-airline'
Plugin 'w0ng/vim-hybrid'
Plugin 'scrooloose/syntastic'


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
colorscheme hybrid
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

let g:airline_theme = "tomorrow"
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:Powerline_symbols = 'fancy'



set term=screen-256color
set background=dark
let base16colorspace=256  



