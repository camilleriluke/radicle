#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until this file has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update the OS and Install Xcode Tools
echo "------------------------------"
echo "Updating OSX.  If this requires a restart, run the script again."
# Install all available updates
sudo softwareupdate -ia
                  #  │└─ All appropriate updates
                  #  └── Install

echo "------------------------------"
# Install Xcode command line tools

# Check if command line tools are already installed
xcode-select -p 2> /dev/null

if [ $? -eq 0 ]
then
  echo "Xcode command line tools already installed."
else
  echo "Installing Xcode Command Line Tools."
  xcode-select --install
fi
