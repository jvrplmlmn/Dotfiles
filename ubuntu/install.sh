#!/usr/bin/env bash

# Add git-core PPA to keep with the latest git updates
sudo apt-add-repository ppa:git-core

echo "Update sources"
sudo apt-get update

echo "Install packages"
sudo apt-get install -y $(cat packages)

# rbenv (+ plugins)
echo "Installing rbenv (+ plugins)"
curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash

if [ ! $(which rbenv) ]; then
  echo "Adding rbenv config"
  mkdir -p ~/.zshrc.d
  cat zshrc.d/env_rbenv.sh | tee ~/.zshrc.d/01_rbenv.sh
  # This source only works in the scope of the script, outside we need to reload
  . ~/.zshrc.d/01_rbenv.sh
fi
