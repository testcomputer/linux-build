To install and update Apache on a Debian-based Linux distribution, such as Debian itself or Ubuntu, you can use the package manager called apt. Here's how you can do it:
Install Apache

    Open a terminal window.

   Update the package list to make sure you have the latest information about available packages:


    sudo apt update

Install Apache by running the following command:

    sudo apt install apache2

   During the installation process, you may be prompted to confirm the installation. Type "Y" and press Enter to continue.

   Apache should now be installed on your system.

Start and Enable Apache

After Apache is installed, you'll need to start the Apache service and enable it to start automatically at boot:

  Start the Apache service:

    sudo systemctl start apache2

Enable Apache to start at boot:

    sudo systemctl enable apache2

To check if Apache is running, you can use:

    sudo systemctl status apache2

Update Apache

To update Apache to the latest version along with other installed packages on your system, you can run:

    sudo apt upgrade

This command will upgrade all packages to their latest available versions, including Apache if there's a newer version available.
Checking Apache Version

To check the currently installed Apache version, you can use the following command:

    apache2 -v

This will display the Apache version information.

That's it! You've installed Apache and learned how to update it on a Debian-based Linux distribution.
