
set encoding=utf-8
scriptencoding utf-8

set number
set showmatch
set showmode
set ruler

call plug#begin()
Plug 'sainnhe/everforest'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'dominikduda/vim_current_word'
call plug#end()

if has('termguicolors')
  set termguicolors
endif
if has('gui_running')
   set background=dark
else
   set background=light
endif

let g:everforest_better_performance = 1
let g:everforest_cursor = 'green'
let g:everforest_disable_terminal_colors = 1
colorscheme everforest

let g:airline_theme = 'everforest'
let g:airline#extensions#tabline#enabled = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


let g:vim_current_word#highlight_twins = 1
let g:vim_current_word#highlight_current_word = 1
