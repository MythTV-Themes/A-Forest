#!/bin/bash
for i in `ls -C1 *.png`; do convert -resize 320x180 $i thumbs/$i; done
for i in `ls -C1 *.jpg`; do convert -resize 320x180 $i thumbs/$i; done
