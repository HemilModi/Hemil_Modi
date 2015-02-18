
if [ $# -gt 0 ]
then
	x=`echo $1 | wc -c`
	x=`expr $x - 1`
	reverse=""
	while [ $x -gt 0 ]
	do
		c=`echo $1 | cut -c $x`
		x=`expr $x - 1`
		reverse=$reverse$c
	done

	echo Reverse string is : $reverse
	exit
fi

echo Please enter a comand line argument

  
