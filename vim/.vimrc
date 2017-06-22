set nocompatible              " be iMproved, required
filetype off                  " required
set ruler
set number                    " line numbers

" Use spaces instead of tabs because they are platform-invariant
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start

" Highlight whitespace at the end of lines
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
Plugin 'kien/ctrlp.vim'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'Shougo/neocomplete'
" Plugin 'Valloric/YouCompleteMe'
"
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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
" Put your non-Plugin stuff after this line

" File name autocomplete in open commands
set wildmenu
set wildmode=longest,list,full

" Theme!
set background=dark
syntax enable
colorscheme lanox

" Neocomplete stuff
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_close_preview = 1

" Enable airline
set laststatus=2

" Remove whitespace at end of lines when writing to file
autocmd BufWritePre * :%s/\s\+$//e
