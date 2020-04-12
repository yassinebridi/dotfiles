syntax enable
set tabstop=2
set shiftwidth=2
set expandtab
set number
filetype indent on
set autoindent

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()
filetype plugin indent on

if &term == 'win32'
  let &t_ti.=" \e[1 q"
  let &t_SI.=" \e[5 q-- INSERT --"
  let &t_EI.=" \e[1 q"
  let &t_te.=" \e[0 q"
else
  let &t_ti.="\e[1 q"
  let &t_SI.="\e[5 q"
  let &t_EI.="\e[1 q"
  let &t_te.="\e[0 q"
endif
