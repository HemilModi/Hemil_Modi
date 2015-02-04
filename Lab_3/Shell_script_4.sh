clear


echo "Enter one number_1:"
read num1
echo "Enter second number_2:"
read num2

if [ "$num1" -eq "$num2" ];
then
	echo "Both numbers are equal!!!";

else
	if [ "$num1" -gt "$num2" ];
	then
		echo "Number_1 is greater then number_2"

	else 
		echo "Number_2 is greater then numbe_1";
	fi
fi

