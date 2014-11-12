

## windows

   cd %USERPROFILE%
   git clone https://github.com/pbking/vim-setup.git .vim
   git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
   mklink /H _vimrc .vim\vimrc
   vim  (:PluginInstall)

## Linux

   git clone https://github.com/pbking/vim-setup.git ~/.vim
   git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   ln -s ~/.vim/vimrc _~/.vimrc
   vim  (:PluginInstall)

