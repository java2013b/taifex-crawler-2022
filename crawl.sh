#!/bin/bash
cd /home/taifex-crawler-2022/tree/master/data
a=$(date +"%Y_%m_%d")
wget https://www.taifex.com.tw/file/taifex/Dailydownload/Dailydownload/Daily_$a.zip
cd ..
git add .
git commit -m "daily update"
git push
git fetch --depth=1
git reflog expire --expire-unreachable=now --all
git gc --aggressive --prune=all
