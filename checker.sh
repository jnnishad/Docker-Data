
sample="3 4 abab 9 aatacanaa 5 bbbbb"

for i in ${sample[@]}
do
size=${#i}

for((j=$size-1,j>=0,j--))
do
interchange="$interchange{i:$j:1}" 
done
if [ '$i' == '$interchange' ]
then echo ''
else 
echo ${#i}
fi
done

echo -e "4 \n6 \n0"
