set nocompatible              " be iMproved, required
filetype off                  " required

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
Plug 'scrooloose/nerdtree' " open folder with ctrl+n
Plug 'rust-lang/rust.vim' " Rust
Plug 'tpope/vim-fugitive' " Git e.g. Gwrite
Plug 'davidhalter/jedi-vim' " Python auto complete

Plug 'vim-airline/vim-airline' " statusline
Plug 'vim-airline/vim-airline-themes'

" Load this last!!
Plug 'ryanoasis/vim-devicons' " icons next to files

" === When you finish, call
" :source %
" :PlugInstall
" ===
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
