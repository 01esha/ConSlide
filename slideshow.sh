#!/bin/bash
##########################################################################
##                              ConSlide                                ##
##                               v 0.1                                  ##
##                             GNU GPLv3                                ##
##########################################################################
 
##########################################################################
# Settings 
##########################################################################
# Directory containing the pictures
directory="/home/user/picture/"
# Setting the frame slide 
max_width=750
max_height=520
border_color=White
border_thickness=10

 
##########################################################################
# Run
##########################################################################

# Pick a random file from all pictures
IFS=$'\n'
files=($(find $directory -type f)) 
let r="$RANDOM % ${#files[*]}"
randomfile=${files[$r]}

#resize random file
convert $randomfile -resize ${max_width}x${max_height} -quality 65 -bordercolor $border_color -border ${border_thickness}x${border_thickness} \( +clone -alpha extract -draw 'fill black polygon 0,0 0,15 15,0 fill white circle 15,15 15,0' \( +clone -flip \) -compose Multiply -composite   \( +clone -flop \) -compose Multiply -composite \) -alpha off -compose CopyOpacity -composite result.png

#show in conky
echo "\${image result.png -p $pos}"
exit
