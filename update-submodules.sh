#!/bin/bash

# Fetch and update all submodules to the latest commit on their respective branches
git submodule update --remote

# Iterate over each submodule and ensure it's on the correct branch
git submodule foreach 'git fetch && git merge origin/$(git symbolic-ref --short HEAD)'

# Commit the updates to the main repository
git add .
git commit -m "Updated submodules to latest commits"