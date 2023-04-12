#!/bin/sh

sudo apt update -y
sudo apt install terminator curl git python3-wstool build-essential python3-pip net-tools fonts-powerline -y

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt update -y
sudo apt install ros-noetic-desktop-full ros-noetic-rosbridge-suite python3-rosdep python3-rosinstall python3-rosinstall-generator -y

echo "source /opt/ros/noetic/setup.zsh" >> ~/.zshrc
source ~/.zshrc

sudo rosdep init
rosdep update

sudo pip install opencv-contrib-python 
sudo pip install open3d
