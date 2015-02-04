count=1
while [ $count -eq 1 ]
do
	echo "Enter a string related to january"
	read a
	case $a in
		"Jan")
		echo "January" ;;
		
		"Janu")
		echo "January" ;;
		
		"Janua")
		echo "January" ;;
		
		"January")
		echo "January" ;;
		
		*)
		echo "Can not understand" ;;
		
		esac 

	echo " Do you want to continue [1/0] : "
	read b
	if [ $b -eq 1 ]
		then
		count=1
	else
		count=0
	fi
done
