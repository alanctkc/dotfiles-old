#!/usr/bin/env bash

apt-get update
apt-get install -y python-dev
apt-get install -y python-setuptools
apt-get install -y git
apt-get install -y vim-nox
apt-get install -y zsh
apt-get install -y tmux
apt-get install -y ranger
apt-get install -y curl

easy_install pip
easy_install ipython
easy_install flake8

sudo -u vagrant -H git clone https://github.com/alanctkc/dotfiles-old /home/vagrant/.config/dotfiles-old
pushd /home/vagrant/.config/dotfiles-old
sudo -u vagrant -H ./bootstrap.sh --no-i3 --git-name "Vagrant User" --git-email vagrant@example.com
sudo -u vagrant -H ./bootstrap.sh --delete-backups
popd
hostname demo
usermod -s /usr/bin/zsh vagrant
