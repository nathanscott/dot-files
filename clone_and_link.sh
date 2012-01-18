#!/bin/bash

cd &&
[ -d '.dot-files' ] || git clone git://github.com/nathanscott/dot-files.git .dot-files &&
ls -1d .dot-files/files/.* | while read f; do
  [ "$f" == '.dot-files/.' ] ||
  [ "$f" == '.dot-files/..' ] ||
  [ "$f" == '.dot-files/.git' ] ||
  ln -vsf "$f" .
done

# cd &&
# [ -d '.oh-my-zsh' ] || git clone git://github.com/nathanscott/oh-my-zsh.git .oh-my-zsh
# 
# cd &&
# [ -d '.oh-my-zsh' ] || git clone git://github.com/sstephenson/rbenv.git .rbenv
# 
# rbenv install || mkdir -p .sources && cd .sources &&
# git clone git://github.com/sstephenson/ruby-build.git &&
# cd ruby-build && ./install.sh && rbenv install 1.9.3-p0