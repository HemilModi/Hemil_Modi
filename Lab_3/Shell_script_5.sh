count=1
while [ $count -eq 1 ]
do
	echo "Enter a positive number between 0 to 50"
	read num
	if [ $num -le 50 -a $num -gt 0 ]
		 then  
		 echo $num*$num | bc
	elif [ $num -gt 50 -o $num -lt 0 ] 
		 then 
		 echo "Please input numbers between 0-50"
	elif [ $num -eq 0 ]
		 then 
		 loop=0
	fi
done
