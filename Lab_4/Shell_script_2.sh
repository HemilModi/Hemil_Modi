echo "enter pattern to search";
read pattern;

echo "enter file name to search in ";
read fileName;

b= grep $pattern $fileName;

if [ $? -eq 0 ]
then              
	echo pattern found ;
else
	echo pattern not found;
fi
