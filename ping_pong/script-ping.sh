#!/bin/sh

# vagrant crea le vm
vagrant up

#comandi 
while true
do
    vagrant ssh vm1 -c "sudo docker run -d -p 3000:80 --name my_pingpong ealen/echo-server"
    sleep 10
    vagrant ssh vm1 -c "sudo docker rm -f my_pingpong"
    vagrant ssh vm2 -c "sudo docker run -d -p 3000:80 --name my_pingpong ealen/echo-server"
    sleep 10
    vagrant ssh vm2 -c "sudo docker rm -f my_pingpong"
done