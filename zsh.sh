#!/bin/bash

#dependencies
apt-get install zsh curl git -y

#change shell default
chsh -s $(which zsh)

#install zsh by using curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y

#add zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

#add zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

#backup zshrc
cp ~/.zshrc ~/.zshrc.bk

#enable plugin in zshrc
sed -i -e 's/plugins=(git/plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf/g' ~/.zshrc

#append bindkey
echo "bindkey '^ ' autosuggest-accept" >> ~/.zshrc
echo "bindkey '^f' forward-word" >> ~/.zshrc
echo "alias gs='git status'" >> ~/.zshrc
source ~/.zshrc







