 
hour=`date|cut -d " " -f 4|cut -d ":" -f 1`

if [ $hour -gt 4 -a $hour -lt 12 ]
then
	echo Good Morning Hemil				

elif [ $hour -gt 12 -a $hour -lt 16 ]
then
	echo Good Afternoon Hemil

elif [ $hour -gt 16 -a $hour -lt 20 ]
then
	echo Good Evening Hemil

else
	echo Good Night Hemil
fi
