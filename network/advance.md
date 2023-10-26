Here's a list of advanced commands, tools, and configurations:
Advanced Network Commands and Tools

    Wireshark: An advanced graphical network protocol analyzer. It can capture and interactively browse the traffic running on a computer network.

    tcpdump with advanced filters: Use complex filters with tcpdump for granular packet analysis.

    tshark: Terminal version of Wireshark, for command-line usage.

    ipset: A companion application for iptables to define and manipulate IP sets for efficient packet filtering.

    iptables/ebtables/nftables advanced rules: Writing more complex rules for packet filtering and network address translation.

    tc (Traffic Control): Used to control the traffic going out of your system. You can shape, schedule, prioritize, and classify traffic.

    iperf3/jperf: Tools to measure maximum TCP and UDP bandwidth performance.

    s-tui: Terminal-based CPU stress and monitoring utility.

    sar: Part of the sysstat package, it's useful for collecting, reporting, or saving system activity information.

    traceroute with options: Use advanced options in traceroute for more detailed analysis.

    hping3: A network tool able to send custom TCP/IP packets and display target replies.

    OpenVPN: Setting up and configuring VPNs.

    Fail2Ban: Script to ban IPs that show malicious signs.

    VLAN Configuration: Using vconfig to create and configure Virtual LANs.

    Bonding Interfaces: Combining multiple network interfaces for redundancy or increased throughput.

    Bridging Interfaces: Setting up network bridging for virtual machines or container environments.

    SNMP Monitoring: Configuring and using SNMP (Simple Network Management Protocol) for network monitoring.

    sshd_config Tweaks: Advanced configuration of SSH daemon for security.

    nftables/iptables firewall scripting: Writing complex firewall scripts for custom routing and filtering.

    GNS3: Network software emulator that allows the combination of virtual and real devices.

    Wireguard: Modern VPN that aims to be simpler, faster, and more secure.

    Ansible/Chef/Puppet for Network Automation: Using configuration management and orchestration tools for network automation.

    BGP Configuration and Management: Managing Border Gateway Protocol for routing and path selection in larger networks.

    Advanced DNS Configuration: Setting up and managing BIND or other DNS servers for more complex setups.

    Performance Tuning: Kernel and network stack tuning for performance.

Advanced Configuration and Scripts

    /etc/iptables/rules.v4 and /etc/iptables/rules.v6: Persistent iptables rule configuration files.

    /etc/sysctl.conf or /etc/sysctl.d/*: Kernel parameters for network tuning.

    Custom Routing Tables: Using ip rule and ip route for policy-based routing.

    /etc/ssh/sshd_config: Advanced SSH daemon configuration for security hardening.

    Network Namespace Configuration: Using network namespaces for isolation.

    Advanced VPN Configuration Files: For OpenVPN, Wireguard, etc.

    Custom Network Monitoring Scripts: Scripts leveraging awk, sed, cron, and other tools for monitoring and alerting.

    Automation Scripts: Using Ansible, Chef, or Puppet scripts for automated network configuration and management.

    Kernel Module Configuration: For specific network protocols or hardware.

    Load Balancer Configuration: Setting up HAProxy, Nginx, or other load balancers.

These tools and configurations can provide a deeper understanding and control over the network, allowing for efficient management, monitoring, troubleshooting, and optimization in complex environments.
