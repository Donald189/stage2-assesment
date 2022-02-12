let win=0
let lose=0
x=""

if [ "$#" -lt 2 ]
then
    echo " How many time you want to toss the coin "
	read toss
	echo " How many people want to toss the coin "
	read people_num
    else
	toss=$1
	people_num=$2
fi
coin=( head tail )
for i in $(seq 1 $toss)
   do
	for y in $(seq 1 $people_num)
   do
     x="${x}${coin[$(($RANDOM%2))]},"
     done

echo "$x"
outcome="(echo "$x" | grep head | grep -v tail)"
if [ "$outcome" == "" ]
then
   win+=1
else
   lose+=1
fi
x=""
done

echo "Wins=${#win[@]}"
echo "Lose=${#lose[@]}"

echo "N0. of wins : ${#Wins[@]}"
echo "N0. of loses : ${#Lose[@]}"