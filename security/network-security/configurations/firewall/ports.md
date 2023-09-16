# Securing Common Ports: A Network Security Guide

When it comes to network security, one of the first steps is to secure commonly used ports. Below is a list of ports that are frequently targeted by attackers and should be on your radar for security measures.

## **Commonly Used Ports**

### **1. FTP (File Transfer Protocol)**
- **Port:** 20, 21
- **Description:** Used for file transfers. Consider using SFTP or FTPS for encrypted transfers.

### **2. SSH (Secure Shell)**
- **Port:** 22
- **Description:** Used for secure remote logins and command execution. Always use key-based authentication and disable root login.

### **3. Telnet**
- **Port:** 23
- **Description:** Used for unencrypted text communications. Avoid using Telnet; switch to SSH instead.

### **4. SMTP (Simple Mail Transfer Protocol)**
- **Port:** 25
- **Description:** Used for email transmission. Ensure it's properly configured to prevent spam relay.

### **5. DNS (Domain Name System)**
- **Port:** 53
- **Description:** Resolves domain names to IP addresses. Secure against DNS amplification attacks.

### **6. HTTP (Hypertext Transfer Protocol)**
- **Port:** 80
- **Description:** Used for web traffic. Consider redirecting to HTTPS for encrypted communication.

### **7. POP3 (Post Office Protocol)**
- **Port:** 110
- **Description:** Used by email clients to retrieve emails. Use POP3S for encrypted communication.

### **8. IMAP (Internet Message Access Protocol)**
- **Port:** 143
- **Description:** Used by email clients to retrieve messages. Use IMAPS for encrypted communication.

### **9. HTTPS (HTTP Secure)**
- **Port:** 443
- **Description:** Used for secure web traffic. Always use strong SSL/TLS certificates.

### **10. SMB (Server Message Block)**
- **Port:** 445
- **Description:** Used for file and printer sharing. Ensure it's not exposed to the public internet.

### **11. RDP (Remote Desktop Protocol)**
- **Port:** 3389
- **Description:** Used for remote desktop connections. Limit access and use strong credentials.

### **12. MySQL**
- **Port:** 3306
- **Description:** Database server. Bind to localhost if not needed externally.

### **13. PostgreSQL**
- **Port:** 5432
- **Description:** Database server. Bind to localhost if not needed externally.

### **14. MongoDB**
- **Port:** 27017
- **Description:** NoSQL database. Ensure it's not publicly accessible and use authentication.

---

**Note:** This is not an exhaustive list, and the specific ports you need to secure will depend on your server's configuration and the services you're running. Always keep your software updated, use firewalls, and regularly audit your network for open ports.

