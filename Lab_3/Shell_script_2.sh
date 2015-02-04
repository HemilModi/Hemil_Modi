clear
ans=0


echo "Enter one number_1:"
read num1
echo "Enter second number_2:"
read num2
ans=`echo "$num1+$num2" | bc` 
echo "Sum:"$ans;

ans=`echo "$num1-$num2" | bc`
echo "Sub ="$ans;

ans=`echo "$num1*$num2" | bc`
echo "Mul = "$ans;

ans=`echo "$num1/$num2" | bc`
echo "Div = "$ans;

ans=`echo "$num1%$num2" | bc`
echo "Mod = "$ans;
