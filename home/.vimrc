set nocompatible              " required
filetype off                   " required

""let python_highlight_all=1
syntax on 

set shortmess+=c

au BufNewFile,BufRead *
     \ set tabstop=4 |
     \ set softtabstop=4 |
     \ set shiftwidth=4 |
     \ set wrap linebreak nolist |
     \ set expandtab |
     \ set autoindent |
     \ set fileformat=unix |

set encoding=utf-8
" Show line numbers
set number

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
"Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'lifepillar/vim-solarized8'


call vundle#end()            " required
filetype plugin on

"colorscheme  solarized8_dark
set background=dark

"colorscheme zenburn
"highlight Normal ctermfg=dark

set backspace=2 " make backspace work like most other apps

"NERDtree
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

"set highlight search
set hlsearch

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"for autocomplete to go away
let g:ycm_autoclose_preview_window_after_completion=1

"powerline include
"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim/
