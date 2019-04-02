#!/bin/bash
export Slave=0
sudo yum install java -y
cd /home/ec2-user
cd welcome_Puppet_Logs
sudo chmod +x script.bash
read -p "Enter slave no. ::"  Slave
echo "$Slave" > host.txt
cd /home/ec2-user
echo "java -jar agent.jar -jnlpUrl http://3.84.239.54:8080/computer/$Slave/slave-agent.jnlp"  > main.sh
sudo chmod +x main.sh
./main.sh
