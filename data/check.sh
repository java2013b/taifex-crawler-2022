#find -type f -name 'Daily*' -size -1000c -delete;
find -type f -name 'Daily*' -size -1000c -print0 | xargs -I {} -0 git rm "{}";
cd ..
git add .
git commit -m "daily update"
git push
git fetch --depth=1
git reflog expire --expire-unreachable=now --all
git gc --aggressive --prune=all
