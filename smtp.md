# Disabling SMTP on Your System: A Step-by-Step Guide

Simple Mail Transfer Protocol (SMTP) is crucial for sending and receiving emails. However, there might be situations where you want to disable it, perhaps for security reasons or to curtail spam. The exact disabling process is determined by the Mail Transfer Agent (MTA) installed on your system. Among the popular MTAs are Postfix, Sendmail, Exim, and more.

In this tutorial, we'll focus on deactivating SMTP for the most commonly used MTAs: Postfix and Sendmail.

## Disabling SMTP for **Postfix**:

If Postfix is your MTA of choice, utilize the following commands:

```bash
sudo systemctl stop postfix
sudo systemctl disable postfix

Disabling SMTP for Sendmail:

For Sendmail users, execute these commands:


sudo systemctl stop sendmail
sudo systemctl disable sendmail

Upon completion, the associated SMTP service will be deactivated and won't initiate during system boot.
Identifying Your MTA:

If you're unsure about your MTA or if you're operating a different one, determine the service listening on the SMTP port (typically port 25) using:



sudo netstat -tuln | grep :25

The output will pinpoint the service utilizing port 25. With this knowledge, you can employ the systemctl commands mentioned earlier, ensuring you replace postfix or sendmail with your specific MTA's name.
Fortifying Against SMTP Traffic:

To enhance security, you might consider barring all SMTP traffic via a firewall rule. If firewalld is your firewall solution, input the following:


sudo firewall-cmd --permanent --add-port=25/tcp --zone=block
sudo firewall-cmd --reload

Note:

Before you make these changes, particularly on a live server, ensure you grasp the full ramifications. Deactivating SMTP means your server won't send or receive emails, which could disrupt intended communications.

Stay vigilant and always prioritize your system's security!
