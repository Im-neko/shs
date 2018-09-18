# rm existed files
echo "----- rm existed files"
sudo rm -rf ~/.zshrc
sudo rm -rf ~/.vimrc
sudo rm -rf ~/.vim
sudo rm -rf ~/.cache
sudo apt remove vim -y

# make dirs
echo "----- make dirs"
mkdir -p ~/.vim
mkdir -p ~/.ssh

# install tools
echo "----- install tools"
sudo apt update -y
sudo apt install zsh tmux wget git -y
echo "----- install vim"
sudo add-apt-repository ppa:jonathonf/vim -y
sudo apt update -y
sudo apt install vim -y

# set envs
echo "----- set envs"
echo "----- set shell"
sudo chsh -s /usr/bin/zsh
echo "---- make id_rsa"
if [ ! -e ~/.ssh/id_rsa ]; then
  ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -N ""
fi
echo "----- set timezone"
# 時間がうまく変更できない場合は次の行をアンコメントしてtimezone情報をインストール
# sudo apt install tzdata
sudo timedatectl set-timezone Asia/Tokyo

# add new line to crontab
echo "----- set crontab"
crontab -l > /tmp/crontab.tmp
addcron="0 \* \* \* \* sudo sh -c '/usr/bin/wget https://im-neko.net/files/setting.cron.sh -O /var/setting.cron.sh && /bin/sh /var/setting.cron.sh'" 
eval "echo ${addcron}" >> /tmp/crontab.tmp
crontab /tmp/crontab.tmp
rm /tmp/crontab.tmp

# download files
echo "----- download files"
wget https://im-neko.net/files/.zshrc -O ~/.zshrc
wget https://im-neko.net/files/.vimrc -O ~/.vimrc
wget https://im-neko.net/files/.vim/dein.toml -O ~/.vim/dein.toml
wget https://im-neko.net/files/docker_install.sh -O ~/docker_install.sh
