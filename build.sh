#!/bin/bash

set -e

make install
python3 -m pip install mazegenerator-2.1.0-py3-none-any.whl
python3 -m pip install pyinstaller


rm -rf build dist

python3 -m PyInstaller \
    --onedir \
    --windowed \
    --name Pacman \
    --add-data "config.json:." \
    --add-data "highscore.json:." \
    --add-data "INSTRUCTIONS.txt:." \
    pac-man.py

echo "Game package completed."
