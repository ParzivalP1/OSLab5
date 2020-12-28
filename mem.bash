#! /bin/sh 

declare -a arr
sequence=($(seq 1 10))
declare -i step=100000
log='report.log'

#echo ${sequence[*]} 

#echo ${arr[*]} 

cat /dev/null > $log
declare -i N=0
while true; do
   arr+=(${sequence[*]})
   let N++
   if [ $step==$N ]; then
	echo ${#arr[*]} >> $log
	N=0
   fi
done
