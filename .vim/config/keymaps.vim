" This file defines user defined key maps
map ;     :Files<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-@> :let @/=""<CR>
map <C-M> :set invnumber \| exec &nu==&rnu? "se nu!" : "se rnu!" <CR>
map <Tab> gt 
map <S-Tab> gT

" Moving between split windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Moving split screens around
" Todo - apparently it's not possible under basic terminal emulator

" Split windows right and bottom
set splitbelow
set splitright

nnoremap ,b :buffer<Space>
inoremap <C-c> <Esc><Esc>

" map <C-Q> 

" Fix spelling mistake
nnoremap <leader>f 1z=

" Toggle spellchecking
nnoremap <leader>s :set spell!<CR>
nnoremap <leader>d :let @/=""<CR>

" Allow repeat operation on visual mode
vnoremap . :norm.<CR>
