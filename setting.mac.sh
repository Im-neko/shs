# rm existed files
sudo rm -rf ~/.zshrc
sudo rm -rf ~/.vimrc
sudo rm -rf ~/.vim

# make dirs
mkdir -p ~/.vim
mkdir -p ~/.ssh

# install tools
brew install wget
brew install vim --with-override-system-vi

# set envs
chsh -s /usr/bin/zsh
if [! -e ~/.ssh/id_rsa]; then
  ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -N ""
fi

# download files
wget https://im-neko.net/files/.zshrc -O ~/.zshrc
wget https://im-neko.net/files/.vimrc -O ~/.vimrc
wget https://im-neko.net/files/.vim/dein.toml -O ~/.vim/dein.toml
