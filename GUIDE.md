

——————————————————————————————————————————————

#!/bin/bash

echo "Changing to Directory..."
echo "-------------------------"
sleep 2

#Change Directory to KeyPair Folder

1 - cd /Users/mac/Documents/key-pair
echo "Now in Directory..."
echo "----------------------"
sleep 1

#SSH command to connect to cloud server

echo "SSH-ing into cloud EC2 server now..."
echo "-------------------------------------"

2 - ssh -i “keypair.pem" ec2-user@ec2-127-0-0-1.compute-1.amazonaws.com
—————————————————————————————————————————————


Read the README file to learn how the script works


Guide to Use

Edit 1 to the correct directory on your local machine. This directory would be the folder you save your key-pairs

Edit 2 to your EC2 parameters. Change "keypair.pem" to the name of your SSH key file, also change "ec2-user@ec2-127-0-0-1.compute-1.amazonaws.com" to the correct username and DNS address. You can find these info in your AWS dashboard

You only have to do these edits once.

__________________________________________________

‘stay cloudy’

-Chief


