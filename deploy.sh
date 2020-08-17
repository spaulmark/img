#!/bin/bash

# Download images
python ./scraper.py

# Create root dir.json

echo '{ "decks": [' > dir.json
ls -d  */ | sed 's/\///g' | sed 's/^/"/' | sed 's/$/",/' | sed '$ s/.$//' >> dir.json
echo ']}' >> dir.json

# Next step: Go into each folder and create a dir.json

for D in *; do
    if [ -d "${D}" ]; then
        cd "${D}"
        echo '{ "files": [' > dir.json
        ls -I "dir.json" | sed 's/\///g' | sed 's/^/"/' | sed 's/$/",/' | sed '$ s/.$//' >> dir.json
        echo ']}' >> dir.json
        cd ..
    fi
done


