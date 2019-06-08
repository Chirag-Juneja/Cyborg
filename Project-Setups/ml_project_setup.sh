#!/bin/bash

FONT_BLUE='\e[0;36m'
FONT_YELLOW='\e[0;33m'
FONT_GREEN='\e[0;32m'

echo -e $FONT_YELLOW
echo "Initializing Project" "$1..."
cd $2

echo "Cloning git repository"
git clone https://github.com/Chirag-Juneja/$1.git 
cd $1

echo "Creating Virtual Environment"
virtualenv -p /usr/bin/python3 env
source env/bin/activate

echo -e $FONT_BLUE
echo "Installing dependencies"
pip install jupyter matplotlib numpy pandas scipy scikit-learn

echo -e $FONT_GREEN
git add -A && git commit -m "init commit"
git push
