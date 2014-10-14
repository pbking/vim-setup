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

