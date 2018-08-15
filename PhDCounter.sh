#!/bin/bash
cd /home/pi/Documents/Linnik-PhD-final
git pull
numberofwords="$(perl /home/pi/programming/tex/texcount.pl -1 -sum -merge /home/pi/Documents/Linnik-PhD-final/main.tex)"
curl "https://api.thingspeak.com/update?api_key=<YOUR_API_KEY>&field1=${numberofwords}"
date >> /home/pi/programming/tex/Progress.log
perl /home/pi/programming/tex/texcount.pl -merge /home/pi/Documents/Linnik-PhD-final/main.tex >> /home/pi/programming/tex/Progress.log
