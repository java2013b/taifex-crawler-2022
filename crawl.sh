#!/bin/bash
#cd /home/runner/work/taifex-crawler-2022/data
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
a=$(date +"%Y_%m_%d")
wget https://www.taifex.com.tw/file/taifex/Dailydownload/Dailydownload/Daily_$a.zip
cd ..
git add .
git commit -m "daily update"
git push
git fetch --depth=1
git reflog expire --expire-unreachable=now --all
git gc --aggressive --prune=all
