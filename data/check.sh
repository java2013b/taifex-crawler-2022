#find -type f -name 'Daily*' -size -1000c -delete;
find -type f -name 'Daily*' -size -1000c -print0 | xargs -I {} -0 rm -rfv "{}";
