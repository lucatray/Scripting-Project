#!/bin/bash

read -p "Enter file to read from (no .txt): " fileRead
if [[ -s $fileRead.txt ]];
    then
        echo "file has something";
    else
        echo
        echo "USAGE: Enter a file name that exists and has data (no .txt)";
        exit
fi

shellSort() {
    read -p "Please enter name of new file for data to be saved (no .txt): " fileName
    echo
    while read p
    do
        $p | sort -d | $p >> $fileName.txt
    done < $fileRead.txt
}


while :
do
    echo
    echo "------------------MENU------------------"
    echo
    echo
    echo "Please select one of four options below: "

    MYCHOICES=("Shell Sort" "Perl Sort" "Perl Search" "Quit")

    select mychoices in "${MYCHOICES[@]}"
    do
        case $mychoices in
            "Shell Sort")
                echo
                echo "Shell Sorting has been selected. "
                shellSort
                clear
                break
                ;;
            "Perl Sort")
                echo
                echo "Perl Sort Selected"
                read -p "Please enter name of new file for data to be saved (no .txt): " fileSave
                $p >> $fileSave.txt
                perl perlsort.pl "$fileSave.txt" "$fileRead.txt"
                break
                ;;
            "Perl Search")
                echo "Three Selected"
                perl perlsearch.pl "$fileRead.txt"
                break
                ;;
            "Quit")
                echo "Exiting Program"
                exit
                ;;
        esac
    done
done
