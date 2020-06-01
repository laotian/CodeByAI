#!/bin/sh
sketchDir=$1
apiUrl="https://service.codebyai.com/api/sketch"
#apiUrl="http://127.0.0.1:8080/api/sketch"
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
