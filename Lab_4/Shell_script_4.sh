
echo  "Enter a number to find out if it is prime or not"
read num

n=`expr $num / 2 `
i=2
flag=0

if [ $num == 2 ]
then
	flag=0

elif [ $num == 3 ]
then 	
	flag=0

else
	while [ "$i" -le "$n" ]
	do
		d=`expr $num % $i `
		
		if [ $d == 0 ]
		then
			flag=1
		fi

		i=`expr $i + 1 `
	done
fi

if [ $flag == 1 ]
then
	echo "Not a prime number"
else
	echo "It is  a prime number" 
fi 
