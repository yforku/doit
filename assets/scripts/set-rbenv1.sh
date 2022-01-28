#!/bin/bash
# REV05: Mon 26 Jul 2021 15:01:58 WIB
# REV03: Tue 15 Jun 2021 18:06:40 WIB
# REV02: Wed 17 Feb 2021 15:15:11 WIB
# START: Tue Jun 18 16:56:27 WIB 2019
# 
# set-rbenv1.sh installs rubby using rbenlv.
#                       
# Copyright (C) 2019-2021 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This is a free script. It is distributed in the
# hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.

# See also set-rbenv2.sh
# Try until it works.
RUBY="2.6.8"
# RUBY="2.7.4"
# RUBY="3.0.2"

[ -d $HOME/.rbenv ] || git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
echo "==== ==== ==== ==== ==== ==== ==== source .bash_profile"
source $HOME/.bash_profile
echo "==== ==== ==== ==== ==== ==== ==== rbenv init"
[ -d $HOME/.rbenv/bin/ ] && eval "$(rbenv init -)"
sync
echo "==== ==== ==== ==== ==== ==== ==== type rbenv"
type rbenv
echo "==== ==== ==== ==== ==== ==== ===="
[ -d $HOME/.rbenv/plugins/ ] || git clone https://github.com/rbenv/ruby-build.git $HOME/.rbenv/plugins/ruby-build
echo "==== ==== ==== ==== ==== ==== ==== rbenv install -l"
rbenv install -l
echo "==== ==== ==== ==== ==== ==== ==== rbenv install $RUBY"
rbenv install $RUBY --verbose

exit 0

