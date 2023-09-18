    ifconfig:
        Displays and configures network interfaces.
        Example: ifconfig eth0 or ifconfig -a to display all interfaces.

    ip:
        A versatile tool for network configuration, routing, and more.
        Example: ip addr show or ip route show.

    ping:
        Tests network connectivity by sending ICMP echo requests to a host.
        Example: ping google.com.

    traceroute:
        Determines the path taken by packets to reach a destination host.
        Example: traceroute google.com.

    netstat:
        Displays network statistics, routing tables, interface statistics, masquerade connections, and multicast memberships.
        Example: netstat -tuln to list open TCP and UDP ports.

    ss:
        A more modern alternative to netstat for displaying socket statistics.
        Example: ss -tuln.

    nc (netcat):
        A versatile networking utility for reading and writing data across network connections.
        Example: nc -l -p 1234 to listen on port 1234.

    dig:
        A DNS (Domain Name System) lookup tool for querying DNS servers.
        Example: dig google.com.

    nslookup:
        Another tool for querying DNS servers to look up IP addresses and domain information.
        Example: nslookup google.com.

    arp:
        Displays and manages ARP (Address Resolution Protocol) cache entries.
        Example: arp -a to view the ARP cache.

    route:
        Manages the IP routing table.
        Example: route -n to display the routing table.

    iwconfig:
        Configures wireless network interfaces.
        Example: iwconfig wlan0.

    ethtool:
        Provides information about network interface cards (NICs) and allows you to change their settings.
        Example: ethtool eth0.

    tcpdump:
        Captures and analyzes network packets.
        Example: tcpdump -i eth0.

    wireshark:
        A graphical network protocol analyzer for in-depth packet inspection.
        Example: Launch with wireshark and select the desired interface.

    iftop:
        Displays bandwidth usage on an interface in real-time.
        Example: iftop -i eth0.

    nmap:
        A powerful network scanner for discovering open ports and services on remote hosts.
        Example: nmap -p 1-1000 target_ip.

    ssh:
        Secure Shell for remote access and secure file transfers.
        Example: ssh user@hostname.

    scp:
        Securely copy files between hosts over an SSH connection.
        Example: scp file.txt user@hostname:/path/to/destination.

    sftp:
        Secure FTP for interactive file transfers over an SSH connection.
        Example: sftp user@hostname.
