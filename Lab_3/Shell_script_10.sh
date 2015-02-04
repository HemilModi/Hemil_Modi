echo "Enter total no of elements"
read num
count=0
echo "Enter the elements"
while [ $count -lt $num ]
do
	read a[count]
	count=`expr $count + 1`
done
echo " Enter the element to search"
read search_num
count=0
flag=0

while [ $count -lt $num ]
do 
	if [ $search_num -eq ${a[count]} ]
		then
			flag=1
			break	
	fi
	count=`expr $count + 1`
done
if [ $flag -eq 1 ]
	then
		echo "Searched number is found at `expr $count + 1` position"
	else 
		echo "The element you are looking for is not found"
fi
