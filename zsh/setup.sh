#! /bin/bash

cd zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl "https://raw.githubusercontent.com/xfanwu/oh-my-zsh-custom-xxf/master/themes/xxf.zsh-theme" > ~/.oh-my-zsh/themes/xxf.zsh-theme
rm -f ~/.zshrc
ln -s `pwd`/.zshrc ~/.zshrc

chsh -s "$(which zsh)" || echo "export SHELL=$(which zsh)
exec $(which zsh) -l" >> ~/.bashrc 

cd ..
source ~/.bashrc
