#!/bin/bash
#
# Media Tool Menu
#
# Original author: Lars Pontoppidan <leverpostej@gmail.com>
# with strong inspiration from Kim written by
# Charles Bouveyron (http://bouveyron.free.fr/kim)
# All hail the contributors as well
# 
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation.

command_exists () {
    command -v "$1" >/dev/null;
}

kdedir=`kf5-config --prefix`

# Tools
if ! command_exists ffmpeg ; then
	echo "ffmpeg not found. Please install it as it is essential to the KDE5 MTM service menus"
	exit 1
fi
if ! command_exists lame ; then
	echo "lame not found. Please install it as it is essential to the KDE5 MTM service menus"
	exit 1
fi
if ! command_exists oggenc ; then
	echo "oggenc not found. Please install it as it is essential to the KDE5 MTM service menus"
	exit 1
fi

# Tag reading
if ! command_exists id3v2 ; then
	echo "id3v2 not found. Please note that tag transfer from .mp3 files will be blank"
fi
if ! command_exists vorbiscomment ; then
	echo "vorbiscomment not found. Please note that tag transfer from .ogg files will be blank"
fi
if ! command_exists metaflac ; then
	echo "metaflac not found. Please note that tag transfer from .flac files will be blank"
fi
if ! command_exists faad ; then
	echo "faad not found. Please note that tag transfer from .aac files will be blank"
fi

 
# if ! command_exists neroAacEnc ; then
# 	echo "neroAacEnc not found. You can find it at http://www.nero.com/eng/downloads-nerodigital-nero-aac-codec.php (freeware)."
# 	exit 1
# fi
# TODO kf5-config --path services # split by ":"
# KDE4 cp src/mtm_*.desktop $kdedir/share/kde4/services/ServiceMenus/
sudo cp src/mtm_*.desktop $kdedir/share/kio/servicemenus
sudo cp src/bin/mtm_* $kdedir/bin/
sudo chmod a+rx $kdedir/bin/mtm_*
sudo chmod a+r $kdedir/share/kio/servicemenus/mtm_*.desktop

sudo mkdir $kdedir/share/mtm
sudo cp COPYING $kdedir/share/mtm/about.txt

echo "Media Tool Menu (MTM) service menu and helper scripts is now installed."
