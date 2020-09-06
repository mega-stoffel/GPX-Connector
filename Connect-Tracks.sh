typeset -i counter1
typeset -i newCounter1
typeset -i counter2
typeset -i newCounter2
counter1=$(cat $1 | wc -l)
counter2=$(cat $2 | wc -l)
newName=($1_2)	
#echo $counter1
#echo $counter2
#echo $newName
let newCounter1=($counter1-1)
let newCounter2=($counter2-5)
head -$newCounter1 $1 > $newName
tail -$newCounter2 $2 >> $newName