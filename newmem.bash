#! /bin/bash 

if [ "$#" -lt 1 ] ; then
    echo "Usage: $0 max_array_size" 
    exit 1
fi


declare -a arr
sequence=($(seq 1 10))
declare -i step=100000

declare -i N=0
while true; do
   arr+=(${sequence[*]})
#   echo ${#arr[*]}
   if [ ${#arr[*]} -ge $1 ]; then
	exit 0
   fi
done
