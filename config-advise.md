
1. Security Features:
System Updates:

    Regularly update your system to get the latest security patches.



    sudo yum update

Configure Firewalld:

    Enable and start firewalld:



    sudo systemctl enable firewalld
    sudo systemctl start firewalld

SELinux:

    Ensure SELinux is enabled and enforcing:



    sudo setenforce 1
    sudo sed -i 's/SELINUX=permissive/SELINUX=enforcing/' /etc/selinux/config

Secure SSH:

    Modify /etc/ssh/sshd_config:
        Disable root login: PermitRootLogin no
        Use SSH key pairs for authentication instead of passwords.
        Change the default SSH port if necessary.
    Restart the SSH service after changes:


sudo systemctl restart sshd


Audit System Activities:

    Use auditd to monitor system activities:


    sudo yum install audit
    sudo systemctl enable auditd
    sudo systemctl start auditd

2. Repositories:
EPEL:

    Extra Packages for Enterprise Linux (EPEL) provides additional packages:



sudo yum install epel-release


3. Packages/Sources:
ClamAV:

    Install ClamAV antivirus:


    sudo yum install clamav clamav-update

Lynis:

    A security auditing tool:

 

    sudo yum install lynis

Rkhunter:

    A rootkit checker:



    sudo yum install rkhunter

Chkrootkit:

    Another tool to check for rootkits:


    sudo yum install chkrootkit

AIDE (Advanced Intrusion Detection Environment):

    File and directory integrity checker:


sudo yum install aide
sudo aide --init
sudo mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz


RPM Fusion:

    What is it?: RPM Fusion provides software that the Fedora Project or Red Hat doesn't ship due to various reasons (e.g., licensing). It's divided into free and non-free repositories based on licensing terms.
    Benefits: Access software not included in the main distribution due to reasons other than quality or maintenance.
    Installation:

sudo yum install --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm


2. Repositories for CentOS 7:
EPEL (Extra Packages for Enterprise Linux):

    What is it?: EPEL is a Fedora Special Interest Group that creates, maintains, and manages a high-quality set of additional packages for Enterprise Linux, including CentOS.
    Benefits: EPEL packages are usually based on their Fedora counterparts and will never conflict with or replace packages in the base Enterprise Linux distributions. They're highly useful when you need software that's not available in the core repositories.
    Installation:

    sudo yum install epel-release

Remi:

    What is it?: Remi is a third-party repository that provides updated versions of the PHP stack and some other software.
    Benefits: If you need more recent versions of PHP and related software than what CentOS provides by default, Remi is an excellent choice.
    Installation:



sudo yum install https://rpms.remirepo.net/enterprise/remi-release-7.rpm


ELRepo:

    What is it?: ELRepo focuses on hardware-related packages to enhance your experience with Enterprise Linux. This includes file system drivers, graphics drivers, network drivers, sound drivers, webcam, and printer drivers.
    Benefits: If you're looking to get the latest hardware drivers or have specific hardware that's not supported by default, ELRepo can be a lifesaver.
    Installation:



sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
sudo yum install https://www.elrepo.org/elrepo-release-7.el7.elrepo.noarch.rpm


IUS (Inline with Upstream Stable):

    What is it?: IUS provides newer versions of software than what's available in the official CentOS repositories. It's a community project sponsored by Red Hat.
    Benefits: Get the latest software, like Python, MariaDB, or PHP, without waiting for the official repositories to catch up.
    Installation:


sudo yum install https://repo.ius.io/ius-release-el7.rpm
sudo yum install epel-release


City Fan:

    What is it?: A repository that provides updated versions of networking tools, like curl.
    Benefits: Access to newer networking tools than what's available in the core repositories.
    Installation:


sudo yum install http://www.city-fan.org/ftp/contrib/yum-repo/city-fan.org-release-2-1.rhel7.noarch.rpm

Use Two-Factor Authentication:

    Consider using two-factor authentication for SSH access using tools like Google Authenticator.

2. Network Security:
Tighten Firewalld Rules:

    Only allow necessary ports and services.


sudo firewall-cmd --list-all
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-port=8080/tcp
sudo firewall-cmd --reload

Advanced Security Measures:
1. System Access and Authentication:
Disable Unused Services and Protocols:

    Ensure that only necessary services are running on your system. Use systemctl list-units --type=service to see active services and disable those you don't need.


    sudo systemctl disable [service-name]

Use Two-Factor Authentication:

    Consider using two-factor authentication for SSH access using tools like Google Authenticator.

2. Network Security:
Tighten Firewalld Rules:

    Only allow necessary ports and services.


    sudo firewall-cmd --list-all
    sudo firewall-cmd --permanent --add-service=http
    sudo firewall-cmd --permanent --add-port=8080/tcp
    sudo firewall-cmd --reload

Use IDS/IPS:

    Install tools like Snort for intrusion detection and prevention.

3. System Integrity:
Configure AIDE:

    After the initial setup of AIDE (as mentioned previously), regularly run checks to ensure file integrity.


    sudo aide --check

Log Monitoring:

    Use tools like Logwatch to get daily reports from log files.

    sudo yum install logwatch

4. User Access and Permissions:
Use sudo and Avoid Root Access:

    Instead of using the root account, utilize sudo for administrative tasks.

Regularly Review User Accounts:

    Periodically check all user accounts and ensure no unauthorized accounts exist.

  

    cat /etc/passwd

Set Strong Password Policies:

    Utilize the PAM (Pluggable Authentication Modules) system to enforce strong password policies.

5. Regular Audits and Monitoring:
System Auditing with auditd:

    Use auditd to set up rules for monitoring system events.



    sudo auditctl -w /etc/passwd -p wa

Monitor User Activity with psacct or acct:

    These tools will let you monitor all commands executed by a user.


    sudo yum install psacct
    sudo systemctl start psacct

6. Secure Shared Memory:

    Edit the /etc/fstab file and add the following line to secure shared memory:



    tmpfs     /run/shm     tmpfs     defaults,noexec,nosuid     0 0

7. Restrict Access to cron:

    Ensure only authorized users can run cron jobs.



    sudo chmod 700 /etc/crontab

8. Regular Backups:

    Regularly back up the system and data. Consider tools like rsync or cloud-based solutions, ensuring that backups are encrypted and stored securely.

9. Stay Informed:

    Regularly check for security advisories related to CentOS and the software you have installed. Subscribe to mailing lists or forums that provide updates on potential vulnerabilities and recommended patches.

Final Thoughts:

Security is a continuous process that requires ongoing effort. Regularly audit your system, keep software up-to-date, and always be on the lookout for potential vulnerabilities. Consider investing in a centralized logging solution or a SIEM (Security Information and Event Management) tool for better log analysis and threat detection.
