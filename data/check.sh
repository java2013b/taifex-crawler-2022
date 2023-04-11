#find -type f -name 'Daily*' -size -1000c -exec rm {} \;
find -type f -name 'Daily*' -size -1000c -print0 | xargs -0 -r rm -rf;
