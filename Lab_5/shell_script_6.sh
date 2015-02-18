
if [ $# -gt 0 ]
then
	num=$1
 	echo $num

elif [ $# -eq 0 ]
then
	num=50
 	echo $num

fi

n=`expr $num + 1 `
k=`expr $num \* $n `
ans=`expr $k / 2 `
echo "The sum of all number till given number is: $ans "


	 
 
