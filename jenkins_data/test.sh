
red=`tput setaf 1`
o=`tput sgr0`
echo "$1 and $2 is passed"

if [ "$3" == "list1" ]
then echo "$red list1 is selected $o"
else echo "first list is not selected"
fi
