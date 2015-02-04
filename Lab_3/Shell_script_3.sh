clear
ans=0


echo "Enter one number_1:"
read num1
echo "Enter second number_2:"
read num2

echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter your choice"
read ch
case $ch in
    1)ans=`expr $num1 + $num2`
     echo "ans ="$ans;;
        2)ans=`expr $num1 - $num2`
     echo "Sub = "$ans;;
    3)ans=`expr $num1 \* $num2`
     echo "Mul = "$ans;;
    4)ans=`expr $num1 / $num2`
     echo "Div = "$ans;;
    *)echo "Invalid choice";;
esac

   



