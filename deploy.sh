#!/bin/bash

# Download images --- Note that if you cloned this repo, you can't run this file because it's private.
if [ -f ./scraper.py ]; then
    python ./scraper.py
fi


./jsons.sh


