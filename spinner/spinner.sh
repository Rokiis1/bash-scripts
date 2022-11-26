#! /usr/bin/bash

#  array of my animatio
spinner=( '|' '/' '-' '\' )

copy(){
  echo "Copying files"
  spin &
# process id
  pid=$!

# after 10 sec kill this func  
  for i in `seq 1 10`
  do
    sleep 1
  done

  kill $pid
  echo ""
}

# spin non stop
spin(){
  while [ 1 ]
  do
     for i in "${spinner[@]}"
     do
       echo -ne "\r$i"
       sleep 0.2
     done
  done
}

copy

