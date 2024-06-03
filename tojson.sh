#!/bin/bash
for f in $(ls GarminRawData |grep -v .zip)
do 
    dir=GarminRawData/$f
    for fitf in $(ls $dir)
        do
       	 fitjson --pretty -o $dir/$fitf.json $dir/$fitf
        done
done

find GarminRawData | grep .fit.json