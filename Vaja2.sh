#!/bin/bash

if test $# -eq 1; then	#Test če je podan samo 1 argument
	cd $(realpath $1)	#Prestavi se v podan direktorij z uporabo absolutne poti 		
	for i in $(ls -l); do	#For zanka čez vse elemente v direktorju
  		if [ -f $i ]; then	#Test če je i-ti element tipa "file"
       		dat=$(ls $i | grep .txt)	#Ustvari spremenljivko "file" i-tega elementa z končnico .txt
        	       	if [ $dat ]; then	#Če ta obstaja
               			cp $dat $dat.old	#Kopiraj datoteko in dodaj kratico .old
               		fi
       	fi
	done
else
	echo "Skripta sprejme samo 1 argument"	#Izpis če je podan več kot 1 argument
    exit 1
fi
exit 0
