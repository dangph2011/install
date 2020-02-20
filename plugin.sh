#!/bin/bash

#install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#add zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

#add zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

#add fzf-tab-completion plugin
git clone https://github.com/lincheney/fzf-tab-completion ~/.oh-my-zsh/custom/plugins/fzf-tab-completion

#backup zshrc
cp ~/.zshrc ~/.zshrc.bk

#enable plugin in zshrc
sed -i -e 's/plugins=(git/plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf fzf-tab-completion/g' ~/.zshrc

#append bindkey
echo "bindkey '^ ' autosuggest-accept" >> ~/.zshrc
echo "bindkey '^f' forward-word" >> ~/.zshrc
echo "alias gs='git status'" >> ~/.zshrc
source ~/.zshrc
