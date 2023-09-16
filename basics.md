    System Information:
        uname -a: Displays information about the system kernel, including the kernel version and system architecture.
        hostname: Shows the system's hostname.

    Hardware Information:
        lscpu: Provides detailed CPU information.
        lsblk: Lists block devices, such as disks and partitions.
        lshw: Displays detailed hardware information.
        lspci: Lists PCI devices connected to the system.

    File System Information:
        df -h: Shows disk space usage for mounted file systems.
        du -h: Estimates disk space usage for directories.
        mount: Lists mounted file systems.

    Network Information:
        ifconfig or ip addr: Displays network interface configuration.
        netstat -tuln: Lists listening network ports.
        ss: A modern alternative to netstat for socket statistics.

    User and Group Information:
        id username: Shows user and group information for a specific user.
        groups username: Lists groups a user belongs to.
        cat /etc/passwd: Displays user account information.
        cat /etc/group: Shows group information.

    Process Information:
        ps aux: Lists running processes along with detailed information.
        top or htop (if installed): Provides a real-time view of system processes.
        pgrep process_name: Finds the Process ID (PID) of a specific process by name.
        kill PID: Sends a signal to a process to stop or modify its behavior (replace PID with the actual process ID).

    Package Management:
        dpkg -l: Lists installed packages (Debian/Ubuntu).
        rpm -qa: Lists installed packages (Red Hat/CentOS).
        apt list --installed: Lists installed packages using APT (Debian/Ubuntu).
        yum list installed: Lists installed packages using YUM (Red Hat/CentOS).

    Logs and System Messages:
        dmesg: Displays kernel messages and system hardware information.
        tail -f /var/log/syslog or journalctl -f: Shows real-time system log messages.

    File and Directory Operations:
        ls: Lists files and directories in the current directory.
        cd: Changes the current directory.
        pwd: Shows the current working directory.
        file filename: Provides information about the type of a file.
        find /path -name filename: Searches for files by name within a directory.

    Text Manipulation:
        cat, less, more: Display file contents.
        grep pattern file: Searches for a pattern in a file.
        sed and awk: Text processing and manipulation tools.
