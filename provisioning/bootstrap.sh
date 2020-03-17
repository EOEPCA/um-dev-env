#!/usr/bin/env bash

apt-get update

# install python
apt-get install python-dev python3-pip -q -y
pip3 install virtualenv

# Ensure file permissions
chmod 600 /home/vagrant/.ssh/id_rsa