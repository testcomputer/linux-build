

# Configuring UFW Firewall Rules

This guide provides a series of commands to configure the UFW (Uncomplicated Firewall) on your system. UFW is a user-friendly interface to manage iptables, the system's firewall.

## Table of Contents
- [Allowing SSH (Port 22)](#allowing-ssh-port-22)
- [Denying Telnet (Port 23)](#denying-telnet-port-23)
- [Allowing HTTP (Port 80)](#allowing-http-port-80)
- [Allowing HTTPS (Port 443)](#allowing-https-port-443)
- [Allowing SMTP (Port 25)](#allowing-smtp-port-25)
- [Denying FTP (Port 21)](#denying-ftp-port-21)
- [Allowing DNS (Port 53)](#allowing-dns-port-53)
- [Allowing MySQL (Port 3306)](#allowing-mysql-port-3306)
- [Allowing PostgreSQL (Port 5432)](#allowing-postgresql-port-5432)
- [Allowing MongoDB (Port 27017)](#allowing-mongodb-port-27017)
- [Enabling and Checking UFW](#enabling-and-checking-ufw)

## Allowing SSH (Port 22)
Allow incoming SSH traffic on port 22:

        sudo ufw allow 22/tcp

## Denying Telnet (Port 23)

Deny incoming Telnet traffic on port 23:



        sudo ufw deny 23/tcp

## Allowing HTTP (Port 80)

Allow incoming HTTP traffic on port 80:



        sudo ufw allow 80/tcp

## Allowing HTTPS (Port 443)

Allow incoming HTTPS traffic on port 443:



        sudo ufw allow 443/tcp

## Allowing SMTP (Port 25)

Allow incoming SMTP traffic on port 25:



        sudo ufw allow 25/tcp

## Denying FTP (Port 21)

Deny incoming FTP traffic on port 21:


        sudo ufw deny 21/tcp

## Allowing DNS (Port 53)

Allow incoming DNS traffic on port 53 (both TCP and UDP):



        sudo ufw allow 53

## Allowing MySQL (Port 3306)

 Allow incoming MySQL traffic on port 3306:


    
        sudo ufw allow 3306/tcp

## Allowing PostgreSQL (Port 5432)

 Allow incoming PostgreSQL traffic on port 5432:



        sudo ufw allow 5432/tcp

## Allowing MongoDB (Port 27017)

Allow incoming MongoDB traffic on port 27017:



        sudo ufw allow 27017/tcp

## Enabling and Checking UFW

Enable ufw:



        sudo ufw enable

Check the status of ufw:


        sudo ufw status

Note:


Make sure you have a good understanding of your network and security requirements before configuring your firewall rules, and always test them to avoid unintended consequences.
