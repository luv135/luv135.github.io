#! /usr/bin/env bash

git add .
git commit -m "update"
hexo deploy
git push github hexo
git push origin hexo