#!/bin/bash
# install python pip packages for a new setup

echo "Installing pip3..."
sudo apt-get install python3-pip

echo "Installing virtual env"
pip3 install virtualenv