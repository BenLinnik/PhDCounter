#!/bin/bash
cd /home/pi/Documents/Linnik-PhD-final
git pull
perl /home/pi/programming/tex/texcount.pl -1 -sum -merge /home/pi/Documents/Linnik-PhD-final/main.tex
