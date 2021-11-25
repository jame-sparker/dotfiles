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
" 
" = Updating
" :PlugUpdate
" ===
call plug#end()
"  ---<<< Vim Plug: End of Installations <<<---

" Allow settings in ftplugin to be installed
filetype plugin indent on


" ====== Load other settings ======
source ~/.vim/config/core.vim
source ~/.vim/config/keymaps.vim
source ~/.vim/config/lightline.vim
source ~/.vim/config/mucomplete.vim

let g:airline_powerline_fonts = 1
" Synchronize clipboard with the system clipboard
set clipboard^=unnamed,unnamedplus
