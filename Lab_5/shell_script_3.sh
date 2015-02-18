if [ $# -gt 0 ]
then
	count=$2
	while [ $count -gt 0 ]
	do
		echo $1
		count=`expr $count - 1` 
	done
fi
