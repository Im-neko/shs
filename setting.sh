# cd ~/
cd

# rm existed files
sudo rm -rf ~/.zshrc
sudo rm -rf ~/.vimrc
sudo rm -rf ~/.vim
sudo apt remove vim -y

# make dirs
mkdir -p ~/.vim
mkdir -p ~/.ssh

# install tools
sudo apt update -y
sudo apt install zsh tmux wget -y
sudo add-apt-repository ppa:jonathonf/vim -y
sudo apt update -y
sudo apt install vim -y

# set envs
chsh -s /usr/bin/zsh
if [! -e .ssh/id_rsa]; then
  ssh-keygen -f ~/.ssh/jwt.key -t rsa -b 4096 -N ""
fi
timedatectl set-timezone Asia/Tokyo

# download files
wget https://im-neko.net/files/.zshrc -O ~/.zshrc
wget https://im-neko.net/files/.vimrc -O ~/.vimrc
wget https://im-neko.net/files/.vim/dein.toml -O ~/.vim/dein.toml
wget https://im-neko.net/files/docker_install.sh -O ~/docker_install.sh
