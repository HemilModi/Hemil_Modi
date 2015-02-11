loop=1
while [ $loop -eq 1 ]
do
	echo "Enter a filename: "	
	read fileName

	echo "Permissioons are :"
	ls -l $fileName

	echo " Do you want to revoke read and write conditions from the file (y/n)"		   
	read b

	if [ "$b" = "y" ]
		then chmod -rw echo $fileName
		     echo "After revoking"	
		     ls -l $fileName
		     echo "Do you wish to continue (y/n):"
		     read d
		     if [ "$d" = "y"  ]
			then loop=1
		     else loop=0
		     fi
	elif [ "$b" = "n" ] 
		then    echo "Do you wish to continue (y/n):"
			read c
			if [ "$c" = "y"  ]
				then loop=1
			else loop=0
			fi
	else	echo "none of the above conditions meet"
		loop=0
	
	fi
done

