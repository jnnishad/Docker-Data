#!/bin/bash


counter=0

while [ $counter -lt 50 ]
do
counter=`expr $counter + 1 `

name=$(cat -n people.txt |grep -w $counter| awk '{print$2}'| awk -F ',' '{print$1}')
lastname=$(cat -n people.txt |grep -w $counter| awk '{print$2}'| awk -F ',' '{print$2}')
age=$(shuf -i 20-25 -n 1)

mysql -h jenkins_mysql -u root  -pjaihind Demo -e  "insert into register values ($counter,'$name','$lastname',$age);"
echo "$counter ,$name,$lastname,$age is added"
done
