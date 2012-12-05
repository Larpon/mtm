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

kdedir=`kde4-config --prefix`

rm $kdedir/share/kde4/services/ServiceMenus/mtm_*.desktop
rm $kdedir/bin/mtm_*
rm -rf $kdedir/share/mtm
#mv $kdedir/share/kde4/services/ServiceMenus/imageconverter.desktop~ $kdeinstdir/share/kde4/services/ServiceMenus/imageconverter.desktop

echo "Media Tool Menu (MTM) service menu and helper scripts is now uninstalled."