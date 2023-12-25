#!/bin/bash

echo "Changing to Directory..."
echo "-------------------------"
sleep 2

#Change Directory to KeyPair Folder

cd /Users/mac/Documents/key-pair
echo "Now in Directory..."
echo "--------------------"
sleep 1

#SSH command to connect to cloud server

echo "SSH-ing into cloud EC2 server now..."
echo "-------------------------------------"

ssh -i "keypair.pem" ec2-user@ec2-127-0-0-1.compute-1.amazonaws.com


