# Securing Common Ports: A Network Security Guide

When it comes to network security, one of the first steps is to secure commonly used ports. Below is a list of ports that are frequently targeted by attackers and should be on your radar for security measures.

## **Commonly Used Ports**
1. **FTP (File Transfer Protocol)**
   - Port: 20, 21
   - Description: Used for file transfers. Consider using SFTP or FTPS for encrypted transfers.

2. **SSH (Secure Shell)**
   - Port: 22
   - Description: Used for secure remote logins and command execution. Always use key-based authentication and disable root login.

3. **Telnet**
   - Port: 23
   - Description: Used for unencrypted text communications. Avoid using Telnet; switch to SSH instead.

4. **SMTP (Simple Mail Transfer Protocol)**
   - Port: 25
   - Description: Used for email transmission. Ensure it's properly configured to prevent spam relay.

5. **DNS (Domain Name System)**
   - Port: 53
   - Description: Resolves domain names to IP addresses. Secure against DNS amplification attacks.

6. **HTTP (Hypertext Transfer Protocol)**
   - Port: 80
   - Description: Used for web traffic. Consider redirecting to HTTPS for encrypted communication.

7. **POP3 (Post Office Protocol)**
   - Port: 110
   - Description: Used by email clients to retrieve emails. Use POP3S for encrypted communication.

8. **IMAP (Internet Message Access Protocol)**
   - Port: 143
   - Description: Used by email clients to retrieve messages. Use IMAPS for encrypted communication.

9. **HTTPS (HTTP Secure)**
   - Port: 443
   - Description: Used for secure web traffic. Always use strong SSL/TLS certificates.

10. **SMB (Server Message Block)**
    - Port: 445
    - Description: Used for file and printer sharing. Ensure it's not exposed to the public internet.

11. **RDP (Remote Desktop Protocol)**
    - Port: 3389
    - Description: Used for remote desktop connections. Limit access and use strong credentials.

12. **MySQL**
    - Port: 3306
    - Description: Database server. Bind to localhost if not needed externally.

13. **PostgreSQL**
    - Port: 5432
    - Description: Database server. Bind to localhost if not needed externally.

14. **MongoDB**
    - Port: 27017
    - Description: NoSQL database. Ensure it's not publicly accessible and use authentication.

15. **SSH (Secure Shell) - Port 22**
    - Description: Secure remote access to your server. Allow only trusted IP addresses to connect via SSH.

16. **HTTP (Hypertext Transfer Protocol) - Port 80**
    - Description: Used for standard web traffic. Open if you're hosting a web server.

17. **HTTPS (Hypertext Transfer Protocol Secure) - Port 443**
    - Description: Used for secure web traffic. Open if you're hosting a website with SSL/TLS encryption.

18. **FTP (File Transfer Protocol) - Ports 20 and 21**
    - Description: If you need FTP access, open these ports. Be cautious with FTP as it's not very secure.

19. **SMTP (Simple Mail Transfer Protocol) - Port 25**
    - Description: For outgoing email. Only open if your server sends email directly.

20. **POP3 (Post Office Protocol) - Port 110**
    - Description: For receiving email. Only open if your server receives email directly.

21. **IMAP (Internet Message Access Protocol) - Port 143**
    - Description: For receiving email with better synchronization capabilities than POP3. Only open if your server receives email directly.

22. **DNS (Domain Name System) - Ports 53 (TCP and UDP)**
    - Description: If your server acts as a DNS resolver or authoritative DNS server, you'll need these ports open.

23. **MySQL - Port 3306**
    - Description: If you're running a MySQL database server, open this port. Limit access to trusted IP addresses.

24. **PostgreSQL - Port 5432**
    - Description: For a PostgreSQL database server. Like MySQL, restrict access to trusted sources.

25. **RDP (Remote Desktop Protocol) - Port 3389**
    - Description: Used for remote desktop access to Windows systems. Limit access to trusted IPs.

26. **VNC (Virtual Network Computing) - Ports 5900-5909**
    - Description: For remote desktop access to Linux systems via VNC. Secure it with a password or SSH tunnel.

27. **SNMP (Simple Network Management Protocol) - Ports 161 and 162**
    - Description: If you're using SNMP for network monitoring, secure these ports.

28. **NFS (Network File System) - Ports 111, 2049**
    - Description: If your server exports NFS shares, restrict access to trusted networks.

29. **LDAP (Lightweight Directory Access Protocol) - Ports 389 and 636**
    - Description: For LDAP directory services. Secure LDAP with TLS.

30. **Kerberos - Ports 88 (UDP) and 543 (TCP)**
    - Description: For Kerberos authentication. Used in various authentication systems.

31. **NTP (Network Time Protocol) - Port 123 (UDP)**
    - Description: If your server provides time synchronization services, secure this port.

32. **Samba - Ports 137-139 and 445**
    - Description: For Windows file sharing. Be cautious and limit access to trusted hosts.

33. **BitTorrent - Ports 6881-6889**
    - Description: For BitTorrent traffic. Secure if you're running a BitTorrent client.

34. **Elasticsearch - Port 9200**
    - Description: For Elasticsearch clusters. Limit access to trusted systems.

35. **MongoDB - Port 27017**
    - Description: For MongoDB database servers. Secure it with authentication and IP restrictions.

36. **Docker - Port 2375**
    - Description: If you expose the Docker API, secure it with authentication and limit access.

37. **Cockpit - Port 9090**
    - Description: If you use Cockpit for server management, consider restricting access to this port to trusted IPs.

38. **SSH on a Non-Standard Port**
    - Description: If you've moved SSH to a non-standard port for security reasons (e.g., Port 2222), make sure you secure that port instead of the default 22.

39. **Memcached - Port 11211**
    - Description: For the Memcached distributed caching system. Limit access to trusted systems.

40. **Redis - Port 6379**
    - Description: For the Redis in-memory data structure store. Secure it with authentication and IP restrictions.

41. **Apache Tomcat - Port 8080**
    - Description: If you're running Apache Tomcat for Java web applications, secure this port.

42. **Oracle Database - Port 1521**
    - Description: For Oracle Database servers. Implement strong security measures for Oracle, including firewall rules.

43. **Minecraft - Port 25565**
    - Description: If you're hosting a Minecraft server, restrict access to players.

44. **VPN Services - Ports used by VPN services such as OpenVPN (1194), PPTP (1723), or L2TP (1701)**
    - Description: Secure VPN ports with strong authentication.

45. **Kubernetes - Ports used by Kubernetes components if you're running a cluster**
    - Description: Secure access to the API server and other components.

46. **Custom Services - Any custom services or applications you run on your server should have specific ports secured as needed.**

47. **Dynamic Ports - Many applications use dynamic ports that may change with each run. For these, it's essential to restrict the range of dynamic ports and limit access to trusted networks.**

48. **Game Servers - If you're hosting game servers like Counter-Strike, Team Fortress, or others, secure the respective ports.**

49. **VPN Protocols - Ports used by various VPN protocols like IPSec (500), IKEv2 (4500), and others. Secure VPN protocols properly.**

50. **SIP (Session Initiation Protocol) - Port 5060**
    - Description: For VoIP communication. Limit access to trusted VoIP servers and clients.

51. **Git - Port 9418**
    - Description: For the Git protocol. Secure access to your Git repositories.

52. **Bitcoind - Port 8333**
    - Description: For the Bitcoin network. Secure if you run a Bitcoin full node.

53. **RabbitMQ - Port 5672**
    - Description: For the RabbitMQ message broker. Implement strong security measures for message queuing.

54. **TFTP (Trivial File Transfer Protocol) - Port 69**
    - Description: If you use TFTP for file transfers, secure this port.

**Note:** This is not an exhaustive list, and the specific ports you need to secure will depend on your server's configuration and the services you're running. Always keep your software updated, use firewalls, and regularly audit your network for open ports.

