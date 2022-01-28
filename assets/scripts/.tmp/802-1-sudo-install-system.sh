#!/bin/bash
# REV03: Tue Jul  2 12:45:43 WIB 2019
# REV02: Thu Jun 20 11:32:17 +07 2019
# REV01: Wed Jun 19 18:55:41 +07 2019
# START: Tue Jun 18 14:47:15 WIB 2019
# 
# Copyright (C) 2019 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This program is free script/software. This program is distributed in the hope 
# that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

DEB="
   build-essential
   libssl-dev
   make
   ruby
   ruby-dev
   ruby-all-dev
   zlib1g-dev
"

echo "====== UPDATE  ==========";
sudo apt update;
echo "====== UPGRADE ==========";
sudo apt dist-upgrade -y;
echo "====== REMOVE  ==========";
sudo apt autoremove --purge -y;
echo "====== CLEAN   ==========";
sudo apt autoclean -y;

for II in $DEB ; do
   echo "Install ======= $II =========="
   sudo apt install $II -y
done

# echo "===== gem rake ====="
# sudo gem pristine rake

echo "===== gem update system ====="
sudo gem update --system

# echo "===== gem update ====="
# sudo gem update

echo "===== ruby ====="
ruby --version

echo "===== gem ====="
gem --version

exit 0


