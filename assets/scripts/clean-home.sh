#!/bin/bash
# REV04: Mon 15 Feb 2021 23:55:32 WIB
# START: Tue Jun 18 14:14:15 WIB 2019
#
# clean-home.sh purges whatever was installed 
#               previously at $HOME.
# 
# Copyright (C) 2019-2021 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This is a free script. It is distributed in the 
# hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY 
# or FITNESS FOR A PARTICULAR PURPOSE.

RMOPT="-rfv"

DELETE="
   $HOME/.bundle/
   $HOME/.gem/
   $HOME/.gemrc
   $HOME/gems/
   $HOME/.rvm/
   $HOME/.rbenv/
"

for II in $DELETE ; do
   [ -f $II ] && (echo "Delete file   $II"; rm $RMOPT $II)
   [ -d $II ] && (echo "Delete folder $II"; rm $RMOPT $II)
done

exit 0

