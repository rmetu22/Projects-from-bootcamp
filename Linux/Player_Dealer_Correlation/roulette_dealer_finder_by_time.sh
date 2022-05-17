!#/bin/bash

grep "$2.$3" $1_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}'
