#!/bin/bash

USR='devops'
for host in `cat remhosts`
do
  echo "##################################"
  echo "Connecting to $host"
  echo "Pushing script to $host"
  scp remotesetup.sh $USR@$host:/tmp/
  echo "Installing server setup to $host" 
  ssh $USR@$host sudo /tmp/remotesetup.sh
  echo
done
