mtm
===

# NOTE

It's been 9 years... Support for KDE4 (legacy) has been moved to the `kde4` branch.
The `master` branch of this repository now supports KDE5/6 (KDE Frameworks 5.x and 6.x).
Also `mplayer` usage has been removed in favor of `ffmpeg`

# Media Tool Menu
## - Convertion between selected formats integrated as KDE5/6 service menus

# Author
Original author: Lars Pontoppidan
Strong inspiration from *Kim* written by
Charles Bouveyron (http://bouveyron.free.fr/kim)

# License
This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation.

# Description
The Media Tool Menu (MTM) KDE service menus is a bunch
of KDE service menus that integrates into konqueror, dolphin or any other software that utilitize KDE service menus.

The tool scripts can convert to and from various audio formats as well as dump audio from .flv videos
The service menus are using shell scripts and common audio and video commandline tools to do all the hard work.

The scripts can (hopefully) easily be extended to more conversions between formats.

# Requirements
In order to have the menus working correctly you should have this commandline software installed on your system:

## As a minimum:
* kdialog
* ffmpeg
* lame
* oggenc

## For extra convenience and slickness:
* id3v2
* vorbiscomment
* metaflac
* faad

## Tags
The tags currently preserved (from/to mp3/ogg/flac/aac) are as follows:
* Title
* Artist
* Album
* Date
* Year
* Comment
* TrackNumber
* Genre
* Publisher
* Language
* Encoder

# Formats
As of now MTM specializes in converting:
### from:
* wav
* mp3
* oggenc
* flac
* aac
* amr
* flv

### to:
* wav
* mp3
* ogg

# Integration
The menu will be installed as:
*right click* -> Actions -> Convert
or
*right click* -> Actions -> Dump Audio
Depending on the file type

Enjoy!
- Lars and all the contributors
