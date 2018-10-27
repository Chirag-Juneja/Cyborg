#!/bin/bash
# gui install for raspbian lite
FONT_YELLOW='\e[0;33m'
FONT_BLUE='\e[0;36m'

echo -e $FONT_YELLOW
echo "Installing gui on your raspbian..."
echo -e $FONT_BLUE

sudo apt-get install xserver-xorg --no-install-recommmends -y;
sudo apt-get install raspberrypi-ui-mods -y;
sudo reboot

