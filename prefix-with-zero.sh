#!/bin/bash
# Pad a list of images with 0's
# %03d means pad with 3 0's, 4.jpg renamed to 0004.jpg
images=$(ls *.jpg)
for image in $images;
do
    echo $image
    value=$(echo $image | sed 's/.jpg//')
    padded=$(printf "%03d" $value)
    echo $padded.jpg
    mv $image $padded.jpg
done
