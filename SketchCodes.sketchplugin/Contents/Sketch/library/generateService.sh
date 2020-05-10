#!/bin/sh
sketchDir=$1
apiUrl="http://182.92.76.238:8080/api/sketch"
cd "$sketchDir"
if [ -f "sketch.zip" ]; then
  rm sketch.zip
fi
if [ -d "CodeByAI" ]; then
  rm -rf CodeByAI
fi
zip -r sketch.zip  assets artboard.json *.html
curl $apiUrl -X POST -F "sketchZip=@sketch.zip" -o CodeByAI.zip
unzip CodeByAI.zip
cp CodeByAI/*.html ./
rm CodeByAI.zip
rm sketch.zip
