#!/bin/bash

echo -e "              !!!!_____________!!!!________!!!!!!!!!!!!!!!!000000+\n            !!!!!!!!_________!!!!!!!!______000000000000000__00!!!!!!!!00000+\n           000____000_______000____000_____000_______0000__00______0+\n         !!!!!!!!00______0+\n         0000______0000___0000______0000___________0000_____0_____0+\n         0000______0000___0000______0000__________0000___________0+\n         0000______0000___0000______0000_________000___0000000000+\n         0000______0000___0000______0000________0000+\n          000______000_____000______000________0000+\n           000____000_______000____000_______00000+\n            00000000_________00000000_______0000000+\n              0000_____________0000________000000007;"

echo "Welcome to FONEMATICS lead Generator"

sleep 4

echo "Please enter your license key:"
read -r license_key


sleep 4

echo "Updating package lists..."
sudo apt update

echo "Upgrading installed packages..."
sudo apt upgrade -y

echo "Fixing missing dependencies..."
sudo apt --fix-broken install -y

# Install curl if it's not already installed
if ! command -v curl &> /dev/null; then
    echo "Installing curl..."
    sudo apt install curl -y
else
    echo "Curl is already installed."
fi

# Clean up
echo "Cleaning up..."
sudo apt autoremove -y
sudo apt autoclean

echo "Success..Now run install sh file using your keygen!"
sleep 5
exit

