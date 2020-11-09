" Forget compatibility with Vi. Who cares.
set nocompatible

" Enable filetypes
filetype on
filetype plugin on
filetype indent on
syntax on

" --- Settings
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
set hidden
set autoread

" set noshowmatch
set hlsearch
set noerrorbells
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set ignorecase
set smartcase
set relativenumber
set nu
set nowrap
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors

set showtabline=2

" Using UTF-8 for typing
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8

" Display indentation
set list lcs=tab:\¦\ 

" Using dark theme
set background=dark

" Give more space for displaying messages.
set cmdheight=2

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Make backspace work like in most other program
set backspace=indent,eol,start

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Set pane position when splitted
set splitbelow
set splitright

" Set allowed minimum width and height
set winwidth=1
set winminwidth=0

" Using fzf in Vim
set rtp+=/usr/local/opt/fzf

" Show signcolumn for alerting error lines
set signcolumn=yes

" Keep cursor the same as other modes in insert mode
set guicursor=

" Make sure spacebar doesn't have any mapping before hand
nnoremap <Space> <Nop>
let mapleader = " "

" --- Key mapping
" Remapping some keys for convenience
noremap . ;
noremap ; :
inoremap jk <esc>
nnoremap zx zz10<C-e>
noremap n nzz
noremap N Nzz
noremap * *zz
noremap # #zz
noremap { {zz
noremap } }zz
noremap <silent> <C-d> <C-d>zz
noremap <silent> <C-u> <C-u>zz
noremap <silent> <C-e> 5<C-e>
noremap <silent> <C-y> 5<C-y>
noremap <silent> zl 10zl
noremap <silent> zh 10zh
nnoremap <silent> <leader>gt gt
nnoremap <silent> <leader>gT gT

" Moving cursor in insert mode
inoremap <C-h> <left>
inoremap <C-l> <right>
inoremap <C-k> <up>
inoremap <C-j> <down>

" Replace text
nnoremap <leader>r :%s///gc<left><left><left>

" Keep in visual mode after change indent
vnoremap < <gv
vnoremap > >gv

" Keep macro at "q" character and activate it
nnoremap <leader>[ qq
nnoremap <leader><CR> @q

" Shortkey navigating & copy paste
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>y "*y
nnoremap <leader>p "*p<Bar>:'[,']normal ==<CR>
nnoremap <leader>Y "+y
nnoremap <leader>P "+p<Bar>:'[,']normal ==<CR>
nnoremap p p<Bar>:'[,']normal ==<CR>
vnoremap <leader>y "*y
vnoremap <leader>p "*p<Bar>:'[,']normal ==<CR>
vnoremap <leader>Y "+y
vnoremap <leader>P "+p<Bar>:'[,']normal ==<CR>
vnoremap p p<Bar>:'[,']normal ==<CR>

" Move selecting lines up & down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
