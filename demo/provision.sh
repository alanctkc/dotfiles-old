#!/usr/bin/env bash

apt-get update
apt-get install -y python-dev
apt-get install -y python-setuptools
apt-get install -y git
apt-get install -y vim-nox
apt-get install -y tmux
apt-get install -y curl

sudo -u vagrant -H git clone https://github.com/alanctkc/dotfiles.git /home/vagrant/.config/dotfiles
pushd /home/vagrant/.config/dotfiles
sudo -u vagrant -H ./bootstrap.sh --no-i3 --git-name "Vagrant User" --git-email vagrant@example.com
rm /home/vagrant/postinstall.sh
popd