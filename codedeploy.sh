# Install the CodeDeploy agent
sudo apt-get update -y
sudo apt install -y ruby-full
sudo apt install -y wget
cd /home/ubuntu
wget https://aws-codedeploy-us-east-2.s3.us-east-2.amazonaws.com/latest/install


chmod +x ./install
./install auto

# Start the CodeDeploy agent
echo "Starting AWS CodeDeploy agent..."
service codedeploy-agent start

# Enable the CodeDeploy agent to start on boot
systemctl enable codedeploy-agent

# Check the status of the CodeDeploy agent
service codedeploy-agent status

echo "AWS CodeDeploy agent installation completed."
