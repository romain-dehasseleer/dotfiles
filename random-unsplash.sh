#!/bin/bash
while true; do
    #Deleting the old wallpaper
    if [ -f wallpaperRandomUnsplash.jpg ]; then 
        rm wallpaperRandomUnsplash.jpg
    fi

    # Downloading picture
    wget https://unsplash.it/1920/1080/?random >/dev/null 2>&1

    # Converting picture
    mv ./index.html?random ./wallpaperRandomUnsplash.jpg

    # Setting wallpaper
    feh --bg-scale wallpaperRandomUnsplash.jpg
    # wait 600 seconds before change the background
    sleep 600
done
