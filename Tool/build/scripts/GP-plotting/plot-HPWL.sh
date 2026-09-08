#!/bin/bash

awk '{sl=substr($0,1,1); if ((sl!=" ") && (sl != "#")) {if ($0 ~ /[0-9]/) {print $2}}}' $1 > TOPLOT

if [ "$2" == "png" ]
then 
    echo "PNG"
    cat gnuplottemplatePNG > gnuplot.script
else
    cat gnuplottemplate > gnuplot.script
fi

gnuplot -p gnuplot.script
