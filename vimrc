set nu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
"set cursorline
"set showmatch
set ruler


set hlsearch
set showmode
set showcmd

set noerrorbells

set encoding=utf-8
"set fileformat=unix

set mouse=a

set scrolloff=8


syntax on

let mapleader=" "

map ; :
map q; q:
map Q :q<CR>
map <leader>Q :q!<CR>
map S :w<CR>

noremap H 0
noremap L $

noremap W 5w
noremap B 5b

noremap J 5j
noremap K 5k

noremap s <nop>
vnoremap <C-y> "+y
nnoremap <C-p> "*p


map <LEADER>w :vsp<CR>
map <LEADER>l <C-w>l
map <LEADER>h <C-w>h

noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>


" Tab management
map tk :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>
map tmh :-tabmove<CR>
map tnl :+tabmove<CR>
