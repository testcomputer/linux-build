# Installing and Updating Apache on Debian-based Linux Distributions

This guide will walk you through the process of installing and updating the Apache web server on Debian-based Linux distributions, such as Debian itself or Ubuntu.

## Table of Contents
- [Installing Apache](#installing-apache)
- [Starting and Enabling Apache](#starting-and-enabling-apache)
- [Updating Apache](#updating-apache)
- [Checking Apache Version](#checking-apache-version)

## Installing Apache

1. **Open a terminal window.**

2. **Update the package list** to ensure you have the latest information about available packages:
 
           sudo apt update

   Install Apache by running the following command:



            sudo apt install apache2

 During the installation process, you may be prompted to confirm the installation. Type "Y" and press Enter to continue.

 Apache should now be installed on your system.

Starting and Enabling Apache

  Start the Apache service:

 

        sudo systemctl start apache2

Enable Apache to start at boot:



        sudo systemctl enable apache2

Check if Apache is running:



    sudo systemctl status apache2

## Updating Apache

   Update Apache to the latest version along with other installed packages on your system:

 

    sudo apt upgrade
    
This command will upgrade all packages to their latest available versions, including Apache if there's a newer version available.

## Checking Apache Version

Check the currently installed Apache version:


    apache2 -v

 This will display the Apache version information.

That's it! You've successfully installed and updated Apache on a Debian-based Linux distribution.


