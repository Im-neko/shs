# update dpkg
sudo apt update -y

# install tools
sudo apt install nginx certbot -y

sudo certbot certonly --standalone --pre-hook "service nginx stop" --post-hook "service nginx start"
