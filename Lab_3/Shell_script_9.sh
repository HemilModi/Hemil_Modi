count=1
while [ $count = 1 ]
do
	echo " India capital?"
	read a	

	case $a in
		"Delhi")
		echo "Correct";;
		
		"delhi")
		echo "correct";;
		
		*)
		echo "Wrong";;

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

