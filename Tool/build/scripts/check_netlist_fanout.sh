#!/bin/bash
# *** Netlist Highest Fanout Checker ***  #
# Utilises ASP tool. Uses /tmp/$USER temp #
# directory. Gets --verilog <netlistpath> #
# --lef <lefpath> --tech <tech.lefpath>   #
# as arguments.                           #
# Christos Sotiriou, Stavros Simoglou     #
#              9/25/2018                  #

ASPSCRIPT=/tmp/$USER/checkfanout.tcl
ASPLOG=/tmp/$USER/asp.log

VERILOG=
LEF=
TECH=

ASP=$(pwd)/pathviz

strstr()
{
  [ "${1#*$2*}" = "$1" ] && return 1
    return 0
}

if [[ ($# != 4) && ($# != 6) ]]; then
  echo -e "\e[31mWrong Parameters Number ($#). Should be: \"--verilog <netlist_path> --lef <lef_path>\" --tech <tech.lef_path>\e[30m"
  exit
fi

while [ "$1" != "" ]; do
    case $1 in
      --verilog )
        shift
        VERILOG=$1
      ;;
      --lef )
        shift
        LEF=$1
      ;;
      --tech )
        shift
        TECH=$1
      ;;
      * )
        # exit 1
    esac
    shift
done

if [ ! -f $VERILOG ]; then 
  echo -e "\e[31mFile $VERILOG Does NOT Exist!\e[30m"
else
  echo "Netlist Path: $VERILOG"
fi

if [[ (! -f $LEF) && (! -f $TECH) ]]; then 
  echo -e "\e[31mFile $LEF Does NOT Exist!\e[30m"
else
  echo ".lef Path: $LEF"
  echo "tech.lef Path: $TECH"
fi


echo "load_lef {$LEF $TECH}" > $ASPSCRIPT
echo "load_verilog $VERILOG" >> $ASPSCRIPT
echo "report_largest_size_nets" >> $ASPSCRIPT
echo "quit" >> $ASPSCRIPT

$ASP -f $ASPSCRIPT -no_gui > $ASPLOG 
FLAG=0
while read -r line; do
  
  if [ $FLAG == 1 ]; then 
    FLAG=0 
    index=`expr index "$line" ":"` 
    echo -e "\e[34mHighest Fanout Net: \e[30m${line:$index}"  
  fi

  strstr "$line" "INFO: Total Number of Nets:" && FLAG=1
done < $ASPLOG

# uncomment this line if you want temporary files removed
#rm -rf $ASPLOG $ASPSCRIPT
