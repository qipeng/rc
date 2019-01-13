#! /bin/bash
cd tmux
mv ~/.tmux.conf ~/.tmux.conf~
ln -s `pwd`/.tmux.conf ~/.tmux.conf
cd ..
