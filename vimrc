filetype off                 
syntax enable
set nocompatible              
set hidden
set wildmenu
set showcmd
set hlsearch
set nostartofline
set ruler
set laststatus=2
set confirm
set number
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set autoindent
set copyindent
set nowrap

" Plugin Setup and Such

if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins Go here

Plugin 'gmarik/Vundle.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-sensible'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on


" Pretty Colors

"colorscheme solarized
"set background=dark
"let g:solarized_termcolors=256
"set t_Co=256

" Get those annoying temporary files out of the working directory

set backup                       " enable backups
set undodir=~/.vim/tmp/undo/     " undo files
set backupdir=~/.vim/tmp/backup/ " backups
set directory=~/.vim/tmp/swap/   " swap files
let g:yankring_history_dir='~/.vim/tmp/yankring'

if !isdirectory(expand(&undodir))
  call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
  call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
  call mkdir(expand(&directory), "p")
endif


" Bindings and Such

" move on wrapped lines
nnoremap j gj
nnoremap k gk

" scroll
nnoremap <C-j> 10j
nnoremap <C-k> 10k

nnoremap <C-n> :NERDTreeTabsToggle<CR>

noremap <C-l> :tabnext<CR>
noremap <C-k> :tabprevious<CR>
noremap <C-h> :tabclose<CR>

