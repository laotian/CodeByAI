#!/bin/sh
sketchDir=$1
apiUrl="https://www.codebyai.com/api/sketch"
cd "$sketchDir"
if [ -f "sketch.zip" ]; then
  rm sketch.zip
fi
if [ -d "CodeByAI" ]; then
  rm -rf CodeByAI
fi
zip -r sketch.zip  assets/*@2x.png artboard.json *.html.bak
curl $apiUrl -X POST -F "sketchZip=@sketch.zip" -o CodeByAI.zip
unzip CodeByAI.zip
if [ $? -eq 0 ]; then
  cp CodeByAI/index.html ./
  rm CodeByAI/index.html
  rm CodeByAI.zip
fi
rm sketch.zip

#if [ -f "/usr/local/bin/codebyai-cli" ]; then
#  /usr/local/bin/codebyai-cli "$sketchDir"
#fi
