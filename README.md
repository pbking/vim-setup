

## windows

   cd %USERPROFILE%
   git clone https://github.com/pbking/vim-setup.git .vim
   mklink /H _vimrc .vim\vimrc
   vim  (:PluginInstall)

## Linux

   git clone https://github.com/pbking/vim-setup.git ~/.vim
   ln -s ~/.vim/vimrc _~/.vimrc
   vim  (:PluginInstall)

