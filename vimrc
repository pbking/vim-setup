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
set autoread
set scrolloff=5
set title
set whichwrap+=<,>,[,],h,l

" Plugin Setup and Such

if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins Go here

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-sensible'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'

call vundle#end()
filetype plugin indent on

" Show buffers at the top (like groovy tabs)
let g:airline#extensions#tabline#enabled = 1

" Pretty Colors (off by default 'cause my terms is usually the purty)
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

" Because what the hell is Modula-2?
autocmd BufNewFile,BufRead *.md set filetype=markdown

" Bindings and Such

" move on wrapped lines
nnoremap j gj
nnoremap k gk

" scroll
nnoremap <C-j> 10gj
nnoremap <C-k> 10gk
nnoremap <C-l> $
nnoremap <C-h> ^

nnoremap <C-n> :NERDTreeToggle<CR>

" Copy and Paste (ctrl+space to use system clipboard)
vmap <C-space> "*y
nmap <C-space> "*p

" buffer switching
nnoremap <C-o> :bnext<CR>
nnoremap <C-i> :bprevious<CR>
nnoremap <C-u> :bp<CR>:bd #<CR>
