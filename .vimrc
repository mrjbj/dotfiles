set runtimepath+=~/.dotfiles/.vim
call plug#begin('~/.dotfiles/.vim/plugged')
 Plug 'sainnhe/everforest'
call plug#end()
set display theme
if has('termguicolors')
        set termguicolors
endif

let g:everforest_background = 'medium'
let g:everforest_better_performance = 1
colorscheme everforest 

" other settings
syntax on
set tabstop=2
set softtabstop=2
set expandtab
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set nowrap
" space + CR turns off highlighted search
noremap <leader><space> :nohlsearch<CR>
inoremap <special> jk <ESC>
