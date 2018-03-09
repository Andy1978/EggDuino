#!/bin/bash -e

if [ ! -d "plotink" ]
then
  git clone https://github.com/evil-mad/plotink.git

  # apply patches
  patch -N -d plotink/ -p1 < ebb_serial.py.patch

fi

if [ ! -d "EggBot" ]
then
  git clone --depth=1 https://github.com/evil-mad/EggBot

  # apply patches to detect /dev/ttyUSB, fix a typo
  patch -N -d EggBot/ -p1 < EggBot.patch

fi
