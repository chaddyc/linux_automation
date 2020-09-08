#!/bin/bash

servers=$(cat servers.txt)

echo -n "Enter the username: "
read name
echo -n "Enter the user id: "
read uid

for server in $servers; do
echo $server
ssh $server "sudo useradd -m -u $uid ansible"
if [ $? -eq 0 ]; then
echo "User $name added on $server"
else
echo "Error on $server"
fi
done
