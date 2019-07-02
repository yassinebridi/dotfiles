call plug#begin('~/.vim/plugged')

Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'editorconfig/editorconfig-vim'
Plug 'leafgarland/typescript-vim'

set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
set number
set laststatus=2

call plug#end()

map <C-o> :NERDTreeToggle<CR>
nmap <C-l> :! deno %<CR>
set clipboard=unnamedplus
