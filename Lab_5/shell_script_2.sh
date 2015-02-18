clear
echo "Enter a string"
read s

len=`echo $s | wc -c`
len=`expr $len - 1`
i=1
j=`expr $len / 2`
while test $i -le $j 
do
	f=`echo $s | cut -c $i`
	l=`echo $s | cut -c $len`
	if test $f != $l 
	then
		echo "Not palindrome"
		exit
	fi
i=`expr $i + 1`
len=`expr $len - 1`
done
echo "Palindrome!"
		
