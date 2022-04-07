#!/bin/bash

echo "updating dir.json files"

for D in *; do
    if [ -d "${D}" ]; then
        cd "${D}"
        echo '{ "files": [' > dir.json
        ls -I "dir.json" | sed 's/\///g' | sed 's/^/"/' | sed 's/$/",/' | sed '$ s/.$//' >> dir.json
        echo ']}' >> dir.json
        cd ..
    fi
done

# Next step, add files to git

git add *

# I would do a message here but nah
