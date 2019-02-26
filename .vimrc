"Daniel Zvara - .vimrc

set nocompatible              " be iMproved, required*/
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'git://github.com/ARM9/arm-syntax-vim.git'

Plugin 'scrooloose/nerdcommenter'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-syntastic/syntastic'

Plugin 'nvie/vim-flake8'

Plugin 'elixir-editors/vim-elixir'

" Color schemes "
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

syntax on
let python_highlight_all=1

set ruler
set laststatus=2

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

set foldmethod=indent
set foldlevel=99

inoremap <C-s> <C-n>
nmap <Left> <nop>
nmap <Right> <nop>
vmap <Left> <gv
vmap <Right> >gv
map <space> /
set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab
set incsearch
set wildmenu
set number
"set relativenumber
set encoding=utf-8
set list lcs=trail:·,tab:»·

au BufNewFile,BufRead *.s,*.S set filetype=arm

au BufNewFile,BufRead *.py
    \ set softtabstop=2 |
   \ set tabstop=2 |
   \ set shiftwidth=2 |
   \ set textwidth=79 |
   \ set expandtab |
   \ set autoindent |
   \ set fileformat=unix
