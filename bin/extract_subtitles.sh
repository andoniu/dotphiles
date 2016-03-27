#!/bin/bash

# extract subtittles from .mkv files
echo "==== Extracting subtitles ===="
IFS=$(echo -en "\n\b")
list=$(ls | grep .mkv)
for file in $list
    do
        subid=$(mkvmerge -i "$file" | grep subtitles | awk -F" " '{print $3}')
        mkvextract tracks $file $subid$(echo $file | awk -F".mkv" '{print $1}').srt
    done
