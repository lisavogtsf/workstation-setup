#!/bin/zsh

# run setup.sh 
#   -- homebrew, zsh, git, git-aliases, unix
#   -- [y/n prompt] applications-common
#   -- [y/n prompt] configuration-osx
#   -- runs all 'opt-in' command line arguments
#
# suggested for self
# $ ./setup.sh lvogt node

set +e
if [[ $(uname) == 'Darwin' ]]
then
  brew install --force google-drive
  brew install --force zoom
  brew install --force slack

  ## override standard menu clock setup
  # set menu clock
  # see http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns
  defaults write com.apple.menuextra.clock "DateFormat" 'EEE MMM d  h:mm a'
fi
set -e
