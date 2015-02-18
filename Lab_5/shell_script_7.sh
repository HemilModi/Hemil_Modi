echo Enter character
read c
for i in `ls`
do
 x=`echo $i|cut -c 1`
if [ $x = $c ]
then echo $i
fi
done

