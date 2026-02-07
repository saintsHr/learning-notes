#!/bin/bash

git add .
count=$(git rev-list --count HEAD)
git commit -m "commit: $count"
git push
clear
