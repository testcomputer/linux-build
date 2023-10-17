bash

#!/bin/bash

# Homelab Firewall Configuration Script for RedHat Server
# This script provides a step-by-step guide to harden and secure your RedHat server. 

# NOTE: Always review scripts from the internet before executing them on your system.

# ------------------------------------------
# SECURITY FEATURES
# ------------------------------------------

# 1. System Updates
echo "Updating system to get the latest security patches..."
sudo yum update

# 2. Configure Firewalld
echo "Enabling and starting firewalld..."
sudo systemctl enable firewalld
sudo systemctl start firewalld

# 3. SELinux Configuration
echo "Ensuring SELinux is enabled and enforcing..."
sudo setenforce 1
sudo sed -i 's/SELINUX=permissive/SELINUX=enforcing/' /etc/selinux/config

# 4. Secure SSH Access
echo "Securing SSH..."
sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
# NOTE: Ensure you have SSH keys set up before disabling password authentication.
# sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
# Change default SSH port if necessary (e.g., to 2222)
# sudo sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config
sudo systemctl restart sshd

# 5. System Auditing with auditd
echo "Setting up auditd for system activities monitoring..."
sudo yum install -y audit
sudo systemctl enable auditd
sudo systemctl start auditd

# ------------------------------------------
# ADDITIONAL REPOSITORIES
# ------------------------------------------

# 1. EPEL Repository
echo "Installing EPEL repository..."
sudo yum install -y epel-release

# 2. RPM Fusion Repository
echo "Installing RPM Fusion repository..."
sudo yum install -y --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm

# (Continue with other repositories like Remi, ELRepo, IUS, etc.)

# ------------------------------------------
# SECURITY TOOLS
# ------------------------------------------

# 1. ClamAV Antivirus
echo "Installing ClamAV antivirus..."
sudo yum install -y clamav clamav-update

# 2. Lynis Security Auditing Tool
echo "Installing Lynis..."
sudo yum install -y lynis

# 3. Rootkit Checkers: Rkhunter and Chkrootkit
echo "Installing rkhunter and chkrootkit..."
sudo yum install -y rkhunter chkrootkit

# 4. AIDE: File and Directory Integrity Checker
echo "Setting up AIDE..."
sudo yum install -y aide
sudo aide --init
sudo mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz

# (Continue with other security tools...)

# ------------------------------------------
# NETWORK SECURITY
# ------------------------------------------

# 1. Firewalld Rules
echo "Tightening firewalld rules..."
sudo firewall-cmd --list-all
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-port=8080/tcp
sudo firewall-cmd --reload

# 2. Two-Factor Authentication for SSH (Consider setting up tools like Google Authenticator.)

# ------------------------------------------
# ADVANCED SECURITY MEASURES
# ------------------------------------------

# 1. System Access and Authentication
# ... (other advanced security measures)

echo "Security configuration completed. Stay vigilant and always prioritize your system's security!"

# Save this script to a file, for instance secure_homelab.sh, make it executable with chmod +x secure_homelab.sh, and then run it with ./secure_homelab.sh.

# NOTE: Before executing, make sure you understand each step. Modify the script according to your specific needs, especially parts that might lock you out, like SSH configurations. Always backup critical files (like sshd_config) before making changes.
