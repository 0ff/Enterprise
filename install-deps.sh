#! /bin/sh
#
# Tool intended to help facilitate the process of booting Linux on Intel
# Macintosh computers made by Apple from a USB stick or similar.
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation; either version 2.1 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# Lesser General Public License for more details.
#
# Copyright (C) 2014 SevenBits
#
#
set -e
mkdir build-deps 2> /dev/null >> /dev/null
cd build-deps
wget -q http://downloads.sourceforge.net/project/gnu-efi/gnu-efi_3.0u.orig.tar.gz
tar -zxvf gnu-efi_3.0u.orig.tar.gz >> /dev/null

cd gnu-efi-3.0
make
sudo make install

cd ../..
rm -rf build-deps

echo Done!