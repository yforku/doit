#!/bin/bash
# REV08: Wed 17 Feb 2021 23:10:06 WIB
# REV07: Wed 17 Feb 2021 11:45:40 WIB
# START: Tue Jun 18 14:47:15 WIB 2019
#
# debs.sh installs related debian packages.
#         You need SuperUser (root) "su -" or "sudo su -" access.
#
# Copyright (C) 2019-2021 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This is a free script. It is distributed in the
# hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.

DEBS1="
autoconf
bison 
build-essential
curl
dirmngr
git
gnupg
libcurl4-openssl-dev
libffi-dev 
libgdbm-dev
libncurses5-dev 
libreadline-dev
libssl-dev
libsqlite3-dev 
libyaml-dev 
libxml2-dev
libxslt1-dev
locales-all
make
nodejs
sqlite3
software-properties-common
x11-apps
zlib1g-dev
"

DEBS2="
cmdtest
"

echo "====== UPDATE  ==========";
apt-get update;
echo "====== UPGRADE ==========";
apt-get dist-upgrade -y;
echo "====== INSTALL1 =========";
apt-get install $DEBS1 -y

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg     | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

echo "====== INSTALL2 =========";
apt-get install $DEBS2 -y

echo "====== REMOVE  ==========";
apt-get autoremove --purge -y;
echo "====== CLEAN   ==========";
apt-get autoclean -y;

exit 0

