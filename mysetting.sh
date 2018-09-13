# rm existed files
sudo rm -rf ~/.zshrc
sudo rm -rf ~/.vimrc
sudo rm -rf ~/.vim

# make dirs
mkdir -p ~/.vim

# install tools
sudo apt install zsh vim tmux wget -y

# set envs
chsh -s /usr/bin/zsh

# download files
wget https://im-neko.net/files/.zshrc -O ~/.zshrc
wget https://im-neko.net/files/.vimrc -O ~/.vimrc
wget https://im-neko.net/files/.vim/dein.toml -O ~/.vim/dein.toml
wget https://im-neko.net/files/docker_install.sh -O ~/docker_install.sh
