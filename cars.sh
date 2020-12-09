#!/bin/bash
# cars.sh
# Peter Smith

while [ $True ]
do

    echo "1 - add car"
    echo "2 - list cars"
    echo "3 - exit program"
    echo "Choose an action (1-3): "
    read ACTION

    while echo "$ACTION" | egrep -v "^[1-3]" > /dev/null 2>&1
    do
        echo "Invalid action, try again."
        echo "1 - add car"
        echo "2 - list cars"
        echo "3 - exit program"
        echo "Choose an action (1-3): "
        read ACTION
    done
    
    case $ACTION in
        1)echo "Adding car";
        
        echo "Year: ";
        read YEAR;
        
        echo "Make: ";
        read MAKE;
        
        echo "Model: ";
        read MODEL;

        CAR_STRING="$YEAR:$MAKE:$MODEL";
        echo -e "\n$CAR_STRING" >> My_old_cars.txt;;
        
        2)echo "Listing cars";

        sort -n My_old_cars.txt;;

        3)echo "Exiting program";exit 0;;
    esac

done
