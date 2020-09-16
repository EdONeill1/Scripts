#!/bin/sh

curl -s https://corona-stats.online > data

cols=$(grep "Rank"    data  | sed "s/▲//g" | tr -s ' ' | cut -d' ' -f4,7,13,18,20)
ire=$( grep "Ireland" data  | sed "s/▲//g" | tr -s ' ' | cut -d' ' -f4,7,10,13,15)
fr=$(  grep "France"  data  | sed "s/▲//g" | tr -s ' ' | cut -d' ' -f4,7,10,13,15)

echo $cols > covid ; echo $ire >> covid ; echo $fr >> covid

sed "s/World/Country/g ; s/ /    /g" covid


