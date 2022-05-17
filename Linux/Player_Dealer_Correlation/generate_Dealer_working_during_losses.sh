#!/bin/bash

grep -e "05:00:00.AM" 0310_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' > Dealers_working_during_losses
grep -e "08:00:00.AM" 0310_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' >> Dealers_working_during_losses
grep -e "02:00:00.PM" 0310_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' >> Dealers_working_during_losses
grep -e "08:00:00.PM" 0310_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' >> Dealers_working_during_losses
grep -e "11:00:00.PM" 0310_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' >> Dealers_working_during_losses
grep -e "05:00:00.AM" 0312_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' >> Dealers_working_during_losses
grep -e "08:00:00.AM" 0312_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' >> Dealers_working_during_losses
grep -e "02:00:00.PM" 0312_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' >> Dealers_working_during_losses
grep -e "08:00:00.PM" 0312_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' >> Dealers_working_during_losses
grep -e "11:00:00.PM" 0312_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' >> Dealers_working_during_losses
grep -e "05:00:00.AM" 0315_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' >> Dealers_working_during_losses
grep -e "08:00:00.AM" 0315_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' >> Dealers_working_during_losses
grep -e "02:00:00.PM" 0315_Dealer_schedule | awk '{print $1 " " $2 "\t" $5 " " $6}' >> Dealers_working_during_losses
