#!/usr/bin/bash

if [[ ! -d build ]]; then
    mkdir build
fi

for f in *.css; do
    update=$(grep '@updateURL' "$f" | awk -F ' ' '{print $NF}' | awk -F '/' '{print $NF}')
    cp "$f" "build/$update"
    echo "Copied to build/$update"
done
