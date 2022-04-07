#!/bin/bash

# Download images --- Note that if you cloned this repo, you can't run this file because it's private.
if [ -f ./scraper.py ]; then
    python ./scraper.py
fi

# Create root dir.json

echo '{ "decks": [' > dir.json
ls -d  */ | sed 's/\///g' | sed 's/^/"/' | sed 's/$/",/' | sed '$ s/.$//' >> dir.json
echo ']}' >> dir.json

# Next step: Go into each folder and create a dir.json

./mkdirs.sh


