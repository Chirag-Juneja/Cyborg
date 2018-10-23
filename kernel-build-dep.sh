#!/bin/bash
# kernel build dependencies

FONT_BLUE='\e[0;36m'
FONT_RESET='\e[0;39m'

echo -e $FONT_BLUE
echo "Installing kernel build dependencies..."
echo ""
echo "build-essentials"
echo -e $FONT_RESET
sudo apt-get install build-essentials -y;

echo -e $FONT_BLUE
echo "libncurses5-dev"
echo -e $FONT_RESET
sudo apt-get install libncurses5-dev -y;

echo -e $FONT_BLUE
echo "libssl-dev"
echo -e $FONT_RESET
sudo apt-get install libssl-dev -y;

echo -e $FONT_BLUE
echo "ccache"
echo -e $FONT_RESET
sudo apt-get install ccache -y;

echo -e $FONT_BLUE
echo "wget"
echo -e $FONT_RESET
sudo apt-get install wget -y;

echo -e $FONT_BLUE
echo "bison"
echo -e $FONT_RESET
sudo apt-get install bison -y;

echo -e $FONT_BLUE
echo "flex"
echo -e $FONT_RESET
sudo apt-get install flex -y;

echo -e $FONT_BLUE
echo "make"
echo -e $FONT_RESET
sudo apt-get install make -y;
