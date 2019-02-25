#!/bin/bash
# You may be working on projects that you want
# to commit as a different user to your main
# account. This script allows you to set the
# user in the local .git/config file
# 
# See bin/git-su also

# Set the user for the local git config
git config user.name "NAME"
git config user.email "EMAIL"
