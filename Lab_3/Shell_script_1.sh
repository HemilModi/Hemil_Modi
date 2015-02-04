clear
ans=0


echo "Enter one number_1:"
read num1
echo "Enter second number_2:"
read num2

ans=`expr $num1 + $num2`
echo "Sum ="$ans;

ans=`expr $num1 - $num2`
echo "Sub = "$ans;

ans=`expr $num1 \* $num2`
echo "Mul = "$ans;

ans=`expr $num1 / $num2`
echo "Div = "$ans;

ans=`expr $num1 % $num2`
echo "Mod = "$ans;
