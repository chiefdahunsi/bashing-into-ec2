Bashing into EC2

So I started learning cloud computing this month and it’s been a great journey. Love the concept of virtualization and playing around the terminal.

My first project was installing web servers and hosting a static one-pager on AWS EC2. I learned a lot from this project and you can see proof of work here - NGINX - http://18.212.202.109/, APACHE - http://3.87.246.44 and a random one - http://35.172.201.19 (NB—I usually stop my EC2 instances to save cost, so the links might not work when you try them).

All these were done from Powershell, so I was using SSH to connect to my remote machines. I found it stressful repeating the SSH connection process, having to input the private DNS, username, and key-pair every time. 

Luckily, I have some knowledge of bash so I thought of automating this process for myself, to create a bash script that when run, will navigate to my key pair location and SSH into any EC2 server I have running. 

After creating this simple script, I couldn’t run it on my laptop cos the Windows OS wasn’t built to run bash scripts. Fortunately for me, my birthday came in a few days and my partner gifted me a MacBook; so problem solved. 

Below is the script and explanation - 

——————————————————————————————————————————————
#!/bin/bash

echo "Changing to Directory..."
echo "-------------------------"
sleep 2

#Change Directory to KeyPair Folder

cd /Users/mac/Documents/key-pair
echo "Now in Directory..."
echo "----------------------"
sleep 1

#SSH command to connect to cloud server

echo "SSH-ing into cloud EC2 server now..."
echo "-------------------------------------"

ssh -i “keypair.pem" ec2-user@ec2-127-0-0-1.compute-1.amazonaws.com
—————————————————————————————————————————————

This is a 2-step script, the first step is to navigate into the key pair folder and then SSH into the cloud server.

The script starts by echoing some statements, it then uses the CD command to navigate the terminal to the key-pair folder. I recommend keeping your key pairs in one folder. The next step is to run the SSH command that connects your terminal to the cloud server. 

Aside from the optional sleep I added to this script, this process is fast and saves me up to 5 minutes daily. Also, I don’t have to store, copy, and paste my instance details all the time which might lead to recklessly exposing my system security.

If you need more clarification, explanation, or help to create this script for yourself, do well to reach out to me @chiefdahunsi across platforms or leave a comment. Here is a link to this project on GitHub - https://github.com/chiefdahunsi/bashing-into-ec2 -- feel free to fork it.

I must also add that I created all of these from my terminal, even most of this article, using different commands and editors like NANO and VIM. I feel so proud of myself; slowly moving from GUI to CLI. 

Next time, I will be talking about security groups, TCP and Ports. Till then, ‘stay cloudy’

-Chief


