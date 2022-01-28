#!/bin/bash
# REV04: Tue Jan  7 10:11:48 WIB 2020
# REV03: Tue Jul  2 12:44:23 WIB 2019
# REV02: Mon Jul  1 02:07:00 WIB 2019
# REV01: Sun Jun 30 17:54:17 WIB 2019
# START: Thu Jun 27 19:27:34 WIB 2019
# 
# Copyright (C) 2019 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This program is free script/software. This program is distributed in the hope 
# that it will be useful, but WITHOUT ANY WARRANTY; without even the implied 
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# GEMS="$HOME/gems/gems/"
GEMS="$HOME/.rbenv/versions/2.6.5/lib/ruby/gems/2.6.0/gems"

echo "===== ===== PULL"
cd $HOME/.rbenv
git pull
rbenv rehash

[ -d $GEMS ] || {
   echo "No $GEMS....."
   exit 1
} 

cd $GEMS

echo "===== ===== _includes"
for ii in jekyll-theme-*
do
   [ -d $ii/_includes ] || mkdir $ii/_includes
done

exit 0

# gem install rails
# rbenv uninstall 2.1.3
# rbenv root

