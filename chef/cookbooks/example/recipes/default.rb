#
# Cookbook Name:: example
# Recipe:: default
#
# Copyright (C) 2015 Javier Palomo Almena
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info('ZZZzzZZZzzzZZZzzzZZZZz')



%w{
git-core
vim
curl
htop
iotop
iftop
iptraf
terminator
}.each do |pkg|
  package pkg do
    action :upgrade
  end
end
