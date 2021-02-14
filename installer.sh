#!/bin/bash
DIR="$(dirname "$0")"

echo "Welcome to autodebian/installer.sh"
sudo apt install wget -y
sudo apt install curl -y
echo "Installing terminal tools"
sudo apt install zsh -y
sudo apt install zsh-autosuggestions -y
sudo apt install terminator -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo cat "$DIR/zsh_config" > "$HOME/.zshrc"
sudo cat "$DIR/terminator_config" > "$HOME/.config/terminator/config"
sudo apt install fonts-powerline -y
sudo apt install powerline -y
sudo apt install neofetch -y
sudo apt install git -y
sudo apt install gh -y
sudo apt install cmatrix -y
echo "Installing drivers"
sudo apt install nvidia-driver-460 -y
echo "Installing virtualization software"
sudo apt install virtualbox -y
echo "Installing disk software"
sudo apt install gparted -y
echo "Installing entertainment software"
sudo apt install steam -y
sudo apt install discord -y
echo "Installing programming software"
sudo apt install code -y
echo "Installing browser"
sudo apt install vivaldi -y
sudo apt remove firefox -y
echo "Installing video encoders and codecs"
sudo apt install handbrake -y
sudo apt install ffmpeg -y
echo "Installing video and audio playback tools"
sudo apt install vlc -y
echo "Installing desktop environment"
sudo apt install rofi -y
sudo apt install i3 -y
sudo apt install kde-full -y
echo "Applying configuration files"

echo "autodebian/installer.sh FINISHED"
zsh
