choice=1;

while test $choice -ne 0 
	do

		echo "enter number less than 50"
		read a
		if [ $a -gt 50 ]
   		then
      			echo "Do I look fool!!!. please enter a number less then 50"
      			continue
   		fi
		ans=$(($a*$a))
 		echo "$ans"
 		echo ""0" to exit "1" to continue"
 		read choice		
done
