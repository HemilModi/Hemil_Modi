echo " Enter the number of terms of fibonzcci series: " 
read a
b=1
c=1
d=0
echo $b
echo $c	
while [ $a -ne 0 ]
do
	d=`expr $b + $c`
	b=$c
	c=$d
	echo $d
	a=`expr $a - 1`
done
		

