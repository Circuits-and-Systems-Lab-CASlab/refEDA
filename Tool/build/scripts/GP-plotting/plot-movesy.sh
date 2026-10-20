#!/bin/bash

awk '{sl=substr($0,1,1); if ((sl!=" ") && (sl != "#")) {if ($0 ~ /[0-9]/) {print $1, $31}}}' $1 > TOPLOT
#awk '{sl=substr($0,1,1); if ((sl!=" ") && (sl != "#")) {if ($0 ~ /[0-9]/) {print $1, $30}}}' $1 > TOPLOT2
#awk '{sl=substr($0,1,1); if ((sl!=" ") && (sl != "#")) {if ($0 ~ /[0-9]/) {print $1, $32}}}' $1 > TOPLOT3

if [ "$2" == "png" ]
then 
    echo "PNG"
    cat gnuplottemplatePNG > gnuplot.script
else
    cat gnuplottemplate > gnuplot.script
fi

gnuplot -p gnuplot.script
