#!/bin/sh
sketchDir=$1
apiUrl="http://127.0.0.1:8080/api/sketch"
cd $sketchDir
if [ -f "sketch.zip" ]; then
  rm sketch.zip
fi
if [ -d "ui2code" ]; then
  rm -rf ui2code
fi
zip -r sketch.zip  assets artboard.json *.html
curl $apiUrl -X POST -F "sketchZip=@sketch.zip" -o ui2code.zip
unzip ui2code.zip
if [ -f "ui2code/bak.html" ]; then
  rm ui2code/bak.html
fi
cp ui2code/*.html ./
rm ui2code.zip
rm sketch.zip
