# System Configuration Guide

This document provides a detailed walkthrough on how to configure various system components for enhanced security and performance.

## Table of Contents

- [Configure Firewalld](#configure-firewalld)
- [SELinux Configuration](#selinux-configuration)
- [SSH Configuration](#ssh-configuration)
- [System Auditing with auditd](#system-auditing-with-auditd)
- [Repository Management: EPEL](#repository-management-epel)
- [System Security Packages](#system-security-packages)

## Configure Firewalld

To bolster your system's security, set up `firewalld`:

```bash
sudo systemctl enable firewalld
sudo systemctl start firewalld

SELinux Configuration

Ensure that SELinux is active and strictly enforcing security policies:


sudo setenforce 1
sudo sed -i 's/SELINUX=permissive/SELINUX=enforcing/' /etc/selinux/config

SSH Configuration

To securely configure remote access via SSH:

    Edit the /etc/ssh/sshd_config file:
        Disable root login: PermitRootLogin no
        Employ SSH key pairs for authentication, eschewing passwords.
        Alter the default SSH port as needed.
    Restart the SSH service to apply the changes:

sudo systemctl restart sshd

System Auditing with auditd

To keep tabs on system activities, utilize auditd:

sudo yum install audit
sudo systemctl enable auditd
sudo systemctl start auditd

Repository Management: EPEL

To access additional packages, install the Extra Packages for Enterprise Linux (EPEL):


sudo yum install epel-release

System Security Packages

Enhance your system's security defenses by incorporating the following packages:

    ClamAV Antivirus:



sudo yum install clamav clamav-update

Lynis - Security Auditing Tool:


sudo yum install lynis

Rkhunter - Rootkit Checker:


sudo yum install rkhunter

Chkrootkit - Another Tool for Rootkit Detection:


sudo yum install chkrootkit

AIDE (Advanced Intrusion Detection Environment) - File and Directory Integrity Checker:


    sudo yum install aide

Thank you for utilizing this guide. It's imperative to periodically revisit and refresh configurations to ensure optimal system performance and security.



This markdown content is structured for clarity and can be copy-pasted directly into your GitHub repository.
