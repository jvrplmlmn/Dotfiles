#!/usr/bin/env bash

echo "Update sources"
sudo apt-get update

echo "Install packages"
sudo apt-get install -y $(cat packages)
