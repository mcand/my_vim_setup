set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Gruvbox color theme
Plugin 'morhetz/gruvbox'

" Awesome airline plugin
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Vim fugitive plugin
Plugin 'tpope/vim-fugitive'

" Git gutter plugin
Plugin 'airblade/vim-gitgutter'
set updatetime=100

" Vim sensitive plugib
Plugin 'tpope/vim-sensible'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()
filetype plugin indent on

syntax on

set autoindent
set smartindent

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

set encoding=utf-8        " Every new file will be utf-8
set fileformat=unix       " LF is default EOL for new files
set fileformats=unix,dos  " Empty files will be open as Unix

set number

" Standard js auto fix on save
autocmd bufwritepost *.js silent !standard --fix %
set autoread

autocmd QuickFixCmdPost *grep* cwindow

" Kill trainling spaces
autocmd BufWritePre * %s/\s\+$//e

" Buffer navigation shortcut
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Copy & paste to system clipboard with <Space>p and <Space>y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Set gruvbox colorscheme
colorscheme gruvbox
set background=dark

" Airline configs
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set hidden
