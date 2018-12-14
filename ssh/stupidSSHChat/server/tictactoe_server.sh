#!/bin/bash

pink="\033[35m"
cyan="\033[36m"
blue="\033[34m"
green="\033[32m"
reset="\033[0m"

#pink=""
#cyan=""
#blue=""
#green=""
#reset=""

cell_w=10
# horizontal line
line="-----------+---------+-----------"

positions=( , , , , , , , , , )  # initial positions

function draw_board {
 
  name=$1[@]  # passing an array as argument
  positions=("${!name}")

  # first lines - instructions
  echo -e "\nQ W E       _|_|_\n A S D   →   | | \n  Z X C     ‾|‾|‾\n\n"

  for (( row_id=1; row_id<=3; row_id++ ));do
    # row
    row="  "
    empty_row="  "
    for (( col_id=1; col_id<$(($cell_w*3)); col_id++ ));do
      # column

      # every 10th is a separator
      if [[ $(( $col_id%$cell_w )) == 0 ]]; then
        row=$row"|"
        empty_row=$empty_row"|"
      else
        if [[ $(( $col_id%5 )) == 0 ]]; then  # get the center of the tile

          x=$(($row_id-1))
          y=$((($col_id - 5) / 10))

          if [[ $x == 0 ]]; then
            what=${positions[$y]}
          elif [[ $x == 1 ]]; then
            what=${positions[(($y+3))]}
          else
            what=${positions[(($y+6))]}
          fi

          # if it's "-", it's empty
          if [[ $what == "-" ]]; then what=" "; fi

          if [[ $what == "X" ]] ; then  # append to row
            row=$row$green$what$reset
          else
            row=$row$blue$what$reset
          fi

          empty_row=$empty_row" "  # advance empty row
        else  # not the center - space
          row=$row" "
          empty_row=$empty_row" "
        fi
      fi
    done
    echo -e "$empty_row""\n""$row""\n""$empty_row"  # row is three lines high
    if [[ $row_id != 3 ]]; then
        echo -e "$line"
    fi
  done
  echo -e "\n"
}

function schreibePositionsFile {

	positionsstring=""
        for i in "${positions[@]}"
                do
                positionsstring=${positionsstring}${i}" "
        done;
#        echo "geschrieben "${positionsstring}
#        echo $positionsstring > positions
}

function definePositions {
	if [ -e "positions" ]; then
		positions_in=$( cat positions )
		echo "gelesen:" $positions_in
		#IFS=' ' read -r -a $positions <<< "$position_in"
		positions=($positions_in)
		printf "Read: "
		for i in "${positions[@]}"
                do
        	        printf "$i "
	        done;
		echo ""

	else 
		schreibePositionsFile 
	fi
}

function setPosition {
    index=10  # init with nonexistent
    case $1 in
          q) index=0;;
          a) index=3;;
          z) index=6;;
          w) index=1;;
          s) index=4;;
          x) index=7;;
          e) index=2;;
          d) index=5;;
          c) index=8;;
    esac
    positions[$index]=$2
}

echo -e "$blue ------------------------------ Server ---------------------- $reset"
definePositions
setPosition $1 $2

draw_board positions

schreibePositionsFile

echo " "
echo -e "$blue ------------------------------------------------------------ $reset"
echo " "

