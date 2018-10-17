#! /usr/bin/env bash

git add .
git commit -m "update"
hexo deploy
git push origin hexo