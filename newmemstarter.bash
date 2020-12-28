#! /bin/bash 

if [ "$#" -lt 2 ] ; then
    echo "Usage: $0 max_array_size number_of_processes" 
    exit 1
fi


for (( i=0; i < $2; i++ )); do
	./newmem.bash $1 &
    sleep 1
done
