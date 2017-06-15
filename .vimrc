" Inspiration from:
" - Andrew Seidl: github.com/andrewseidl/dotfiles
"
" His inspiration from:
" - Aaron Bartholomew: github.com/abartholome2/vim-xtreme
" - Jon Childress: github.com/jonplussed/dotfiles
" - ryanss: github.com/ryanss/vim
" - Jessie Frazelle: github.com/jfrazelle/.vim


" settings for Vundle
"set nocompatible " be iMproved, required
"filetype off     " required

set nocompatible
set encoding=utf-8

syntax on
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  call system("curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
endif

call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle
Plug 'gmarik/Vundle.vim'

" original repos on github
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'


call plug#end()

set updatetime=250


"" option"s
"set autoindent
"set autoread
"set background=dark
"set backspace=2
"set diffopt+=iwhite
"set history=50
"set hlsearch
"set ignorecase
"set incsearch
"set laststatus=2
"set lazyredraw
"set number
"set scrolloff=5
"set showcmd
"set showfulltag
"set showmatch
"set textwidth=80
"set virtualedit=all
"set wildmenu

" because we have standards -jonplussed
"set textwidth=79

" these may get overridden by tpope/vim-sleuth
"set expandtab
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
