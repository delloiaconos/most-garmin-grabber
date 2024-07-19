#!/usr/bin/env sh
for f in $(ls -r GarminRawData/*/*.fit | grep -v .zip)
do 
    echo "CONVERTING '$f' -> '${f%.*}.json'"
    time fitjson --pretty -o "${f%.*}".json "$f"
done