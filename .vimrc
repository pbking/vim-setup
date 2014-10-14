"Jason Crist's very special .vimrc file

execute pathogen#infect()

filetype indent plugin on
syntax on

set hidden
set nocompatible
set wildmenu
set showcmd
set hlsearch
set nostartofline
set ruler
set laststatus=2
set confirm
set number
set shiftwidth=4
set softtabstop=4
set expandtab

"NERDTree Prefs
"autocmd vimenter * NERDTreeTabsOpen
map <C-n> : NERDTreeTabsToggle<CR>

"Tabs and such
noremap <C-S-l> :tabnext<CR>
noremap <C-S-k> :tabprevious<CR>
noremap <C-S-h> :tabclose<CR>

" Get those annoying temporary files out of the working directory
set backup                       " enable backups
set undodir=~/.vim/tmp/undo/     " undo files
set backupdir=~/.vim/tmp/backup/ " backups
set directory=~/.vim/tmp/swap/   " swap files
let g:yankring_history_dir='~/.vim/tmp/yankring'

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

"Pretty colors
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
