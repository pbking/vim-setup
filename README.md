## The Peanut Butter VIM setup

Contains a SIMPLE .vimrc file (which should be in your ~)
has pathogen installed and a very few nifty plugins

Leverages git submodules so be aware when checking out.

This is likely to grow as I use VIM more but I was tired of using somebodies elses vim setup and not knowing what all it did, how it worked or what was customized.  This is me going back to bare bones and setting up VIM the way I want it to work.  It's public in case anybody else wants to know how I work.

I use it on linux.  It might work on other enviornments I guess but I've never tried it.  When I use VIM from windows I just use PuTTY.  If you do that as well remember to install the solarized putty register files so it looks lovely-ish.

### Installation

Use git.  (duh)

git clone --recursive https://github.com/pbking/vim-setup.git ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
