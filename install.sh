#!/bin/sh

# Git
mkdir ~/.config/git
ln -s $(pwd)/git/commit_msg_template.txt ~/.config/git/commit_msg_template.txt
git config --global commit.template ~/.config/git/commit_msg_template.txt

# Create symlink for ~/.xsession
# ln -s $(pwd)/xsession/.xsession ~/.xsession
