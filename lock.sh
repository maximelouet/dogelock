#!/bin/sh

export DISPLAY=:0

img=/tmp/screenlock.png

scrot $img
convert $img -level 0%,100% \
	-gamma 0.16,0.15,0.15 \
	-filter Gaussian -resize 20% -define filter:sigma=0.6 -resize 500% \
	-font "Noto-Sans" -pointsize 40 -gravity center \
	doge.png -gravity center -composite \
	$img

i3lock -f -i $img
