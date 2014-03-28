#!/bin/sh
## clean_locale_gnome.sh for Clean locale directory of gnome in /home/beneva_a/lib/bin
## 
## Made by Antoine
## Login   <beneva_a@epitech.net>
## 
## Started on  Thu Oct 14 14:45:35 2010 Antoine
## Last update Thu Oct 14 14:46:34 2010 Antoine
##

clean()
{
    rm -rfv $1/.*~
    rm -rfv $1/*~
    rm -rfv $1/*.default
    rm -rfv $1/*.sample
}

if [ $1 ]
then

    if [ $1 = "locale" ]
    then
	cd /usr/share/gnome/help
	for i in `ls`
	do
	    cd $i
	    for j in `ls`
	    do
		if [ $j != "en" ] && [ $j != "C" ]
		then
		    rm -vRf `pwd`/$j
		fi
	    done
	    cd ..
	done
	scrollkeeper-update -q
    elif [ -d $1 ]
    then
	clean $1
    else
	echo "$1 not a directory"
    fi

else
    clean `pwd`
fi
