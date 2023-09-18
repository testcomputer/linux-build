1. Allowing SSH (Port 22):

Allow incoming SSH traffic on port 22:

bash

sudo ufw allow 22/tcp

2. Denying Telnet (Port 23):

Deny incoming Telnet traffic on port 23:

bash

sudo ufw deny 23/tcp

3. Allowing HTTP (Port 80):

Allow incoming HTTP traffic on port 80:

bash

sudo ufw allow 80/tcp

4. Allowing HTTPS (Port 443):

Allow incoming HTTPS traffic on port 443:

bash

sudo ufw allow 443/tcp

5. Allowing SMTP (Port 25):

Allow incoming SMTP traffic on port 25:

bash

sudo ufw allow 25/tcp

6. Denying FTP (Port 21):

Deny incoming FTP traffic on port 21:

bash

sudo ufw deny 21/tcp

7. Allowing DNS (Port 53):

Allow incoming DNS traffic on port 53 (both TCP and UDP):

bash

sudo ufw allow 53

8. Allowing MySQL (Port 3306):

Allow incoming MySQL traffic on port 3306:

bash

sudo ufw allow 3306/tcp

9. Allowing PostgreSQL (Port 5432):

Allow incoming PostgreSQL traffic on port 5432:

bash

sudo ufw allow 5432/tcp

10. Allowing MongoDB (Port 27017):

Allow incoming MongoDB traffic on port 27017:

bash

sudo ufw allow 27017/tcp

Please note that you should adapt these commands to your specific requirements and make sure to enable ufw and check its status to ensure your firewall rules are in effect:

    Enable ufw:

bash

sudo ufw enable

    Check the status of ufw:

bash

sudo ufw status

Make sure you have a good understanding of your network and security requirements before configuring your firewall rules, and always test them to avoid unintended consequences.
