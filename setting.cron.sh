# rm existed files
echo "----- rm existed files"
sudo rm -rf ~/.zshrc
sudo rm -rf ~/.vimrc
sudo rm -rf ~/.vim/dein.toml

# download files
echo "----- download files"
wget https://im-neko.net/files/.zshrc -O ~/.zshrc
wget https://im-neko.net/files/.vimrc -O ~/.vimrc
wget https://im-neko.net/files/.vim/dein.toml -O ~/.vim/dein.toml
