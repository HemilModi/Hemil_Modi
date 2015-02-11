
echo enter filename 
read fileName

n=`cut -d' ' -f 1- $fileName | tr ' ' '\n' | wc -l |cut -d' ' -f1 `
echo $(( n - 1))


