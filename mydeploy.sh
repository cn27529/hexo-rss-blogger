#!/usr/bin/env sh
hexo clean
hexo g
cp ./CNAME ./public/CNAME
cp ./robots.txt ./public/robots.txt
hexo d

