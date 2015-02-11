flag=1;
while [ $flag -eq 1 ]
do
	echo "Please enter your basic salary";
	read salary;
	
	if [ "$salary" -gt "0" ] 
	then
		flag=0
	else
		echo "Do not try to be smart"
	fi

done

echo "0.12 * $salary" | bc

