if [ ! -e ~/.ssh/id_rsa ]; then
  ssh-keygen -f ~/.ssh/jwt.key -t rsa -b 4096 -N ""
fi
