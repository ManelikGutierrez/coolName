echo "Installing UFW..."
sudo apk add ufw

# Enable UFW service
echo "Enabling UFW service..."
sudo rc-update add ufw default
sudo service ufw start

# Allow SSH (port 22)
echo "Allowing SSH..."
sudo ufw allow 22/tcp

# Allow RDP (port 3389) - Optional
echo "Allowing RDP..."
sudo ufw allow 3389/tcp

# Enable UFW default rules
echo "Setting default policies..."
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Enable UFW
echo "Enabling UFW..."
yes | sudo ufw enable

# Verify UFW status
echo "UFW status:"
sudo ufw status verbose

echo "Setup complete. SSH and RDP are now allowed."