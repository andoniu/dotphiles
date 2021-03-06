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
#ffmpeg -i Game.Of.Thrones.S06E09.Battle.Of.The.Bastards.Web-DL.1080p.10bit.5.1.x265.HEVC-Qman\[UTR\].Requested.mkv -vcodec copy -acodec copy got_s06e09.mp4
