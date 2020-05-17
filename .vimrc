set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'ap/vim-css-color'

call vundle#end()            " required
filetype plugin indent on    " required
" -- End of Vundle Config --


filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


"  --->>> Vim Plug: Plug in installations >>>---
call plug#begin('~/.vim/plugged')

" List of plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'lifepillar/vim-mucomplete'

Plug 'ryanoasis/vim-devicons' " load it last

" Don't forget to save the file and call
" :PlugInstall
call plug#end()
"  ---<<< Vim Plug: End of Installations <<<---

" Allow settings in ftplugin to be installed
filetype plugin indent on


" ====== Allow settings in config to be loaded ======
for f in split(glob('~/.vim/config/*.vim'), '\n')
  exe 'source' f
endfor

" Synchronize with clipboard"
set clipboard=unnamedplus
