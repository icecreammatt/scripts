#!/bin/bash
for x in *.mp4; do
    # dest=$(echo $x | sed 's/.mp4/.mov/');
    # echo $dest
    ffmpeg -i $x -c:v libx264 -acodec aac -ab 192k -strict -2 -ac 2 -qp 0 ${x/.mp4/.mov};
done

# ffmpeg -i $x -strict experimental -f mp4 \
#        -vcodec libx264 -acodec aac \
#        -ab 160000 -ac 2 -preset slow \
#        -crf 22 ${x/.MPG/.mp4};
