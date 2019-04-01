#!/bin/bash
export Slave=0
sudo yum install java -y
sudo chmod +x /home/ec2-user/script.sh
cd /home/ec2-user
read -p "Enter slave no. ::"  Slave
echo "$Slave" > host.txt
echo "java -jar agent.jar -jnlpUrl http://3.84.239.54:8080/computer/$Slave/slave-agent.jnlp"  > main.sh
sudo chmod +x main.sh
./main.sh
