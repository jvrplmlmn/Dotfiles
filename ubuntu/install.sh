#!/usr/bin/env bash

# Add git-core PPA to keep with the latest git updates
sudo apt-add-repository ppa:git-core

echo "Update sources"
sudo apt-get update

echo "Install packages"
sudo apt-get install -y $(cat packages)
