count=1
while [ $count -eq 1 ]
do
	echo "Enter a command " 
	read a
	$a
	echo " Do you want to continue [1/0] : "
	read b
	if [ $b -eq 1 ]
		then
		count=1
	else
		count=0
	fi
done
