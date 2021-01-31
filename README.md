# klebster2's .vimrc

Inspired by https://github.com/amix/vimrc.git and ThePrimeagen

This setup assumes that you are setting up vim according to the configuration in this repo, and that you are using ubuntu 20 to do so.

first clone repo with history depth=1 to directory `~/.vim_runtime` and change directory to `~/.vim_runtime`:

`git clone --depth=1 https://github.com/klebster2/myvimrc ~/.vim_runtime && cd ~/.vim_runtime`

next run the dependency installer (assumes you are using Ubuntu)

`sudo make dependencies`

finally run the installer

`./install_vimrc.sh`

you could also just use

`sudo make dependencies && ./install_vimrc.sh`
