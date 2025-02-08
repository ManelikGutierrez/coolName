echo "Installing UFW..."
apk add ufw

# Enable UFW service
echo "Enabling UFW service..."
rc-update add ufw default
service ufw start

# Allow SSH (port 22)
"Allowing SSH..."
sudo ufw allow 22/tcp

# Allow RDP (port 3389) - Optional
echo "Allowing RDP..."
ufw allow 3389/tcp

# Enable UFW default rules
echo "Setting default policies..."
ufw default deny incoming
ufw default allow outgoing

# Enable UFW
echo "Enabling UFW..."
yes | ufw enable

# Verify UFW status
echo "UFW status:"
ufw status verbose

echo "Setup complete. SSH and RDP are now allowed."