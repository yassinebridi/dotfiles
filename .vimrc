call plug#begin('~/.vim/plugged')

Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'editorconfig/editorconfig-vim'
Plug 'leafgarland/typescript-vim'


set laststatus=2

call plug#end()

map <C-o> :NERDTreeToggle<CR>
