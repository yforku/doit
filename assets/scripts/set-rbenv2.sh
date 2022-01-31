#!/bin/bash
# REV15: Mon 31 Jan 2022 17:00:00 WIB
# REV14: Mon 26 Jul 2021 15:00:00 WIB
# REV12: Mon 19 Jul 2021 17:06:42 WIB
# REV11: Tue 15 Jun 2021 18:28:57 WIB
# REV10: Wed 17 Feb 2021 15:15:38 WIB
# START: Tue 18 Jun 2019 16:56:27 WIB
#
# set-rbenv2.sh installs the bundler.
#
# Copyright (C) 2019-2022 Rahmat M. Samik-Ibrahim
# http://RahmatM.Samik-Ibrahim.vLSM.org/
# This is a free script. It is distributed in the
# hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.

# See also set-rbenv1.sh
# PS: Github-Pages uses Jekyll 3.9, which isn’t compatible with Ruby 3.
# Downgrading to Ruby 2.7 should avoid the problem (chuckhoupt, 2021).
# Try until it works.
RUBY="2.6.9"
# RUBY="2.7.5"
# RUBY="3.0.3"
# RUBY="3.1.0"

echo "==== ==== ==== ==== ==== ==== ==== rbenv init"
[ -d $HOME/.rbenv/bin/ ] && eval "$(rbenv init -)"
echo "==== ==== ==== ==== ==== ==== ==== rbenv global $RUBY"
rbenv global $RUBY
echo "==== ==== ==== ==== ==== ==== ==== ruby -v"
ruby -v
echo "==== ==== ==== ==== ==== ==== ==== .gemrc"
echo "gem: --no-document" > $HOME/.gemrc
echo "==== ==== ==== ==== ==== ==== ==== gem install bundler"
gem install bundler
# gem install bundler rails

exit 0

