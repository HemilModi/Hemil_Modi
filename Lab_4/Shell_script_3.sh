echo -n "Enter a number till to add numbers"
read num

echo $num

n=`expr $num + 1 `
k=`expr $num \* $n `
ans=`expr $k / 2 `
echo "The sum of all number till given number is: "
echo $ans
 
