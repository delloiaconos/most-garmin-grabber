#!/bin/bash
for f in $(ls GarminRawData |grep -v .zip)
do 
    dir=GarminRawData/$f
    rm $dir/*.json.json
    for fitf in $(ls $dir | grep -v .json)
        do
        echo "convert $dir/$fitf"
       	time fitjson --pretty -o $dir/$fitf.json $dir/$fitf &
        done
done

find GarminRawData | grep .fit.json > files.csv