**PortScanner**

A simple and clean Bash script that scans TCP ports of a target IP address or domain using Bash's built-in /dev/tcp feature.

**Features**

Takes an IP address or domain as input

Scans a specific port or performs a full scan

Displays open ports found during the scan

Uses parallel scanning for faster results

Lightweight and requires no external tools

**Port Range**

The full scan option checks ports 1–1024 only.

This range contains many well-known services such as SSH, HTTP, HTTPS, FTP, and DNS.

**Usage**

Make the script executable:

chmod +x scan.sh

**Run the script:**

./scan.sh


You will be prompted to enter:

Target IP address or domain

Port number or --all for a full scan

**Example**
Enter the IP/Domain you want to scan: scanme.nmap.org
Enter port number OR type --all to scan all ports: 80


**Example output:**

[*]Scanning scanme.nmap.org ...
[OPEN] Port 80

Full Scan Example
Enter the IP/Domain you want to scan: scanme.nmap.org
Enter port number OR type --all to scan all ports: --all

**Notes**

The full scan checks ports 1–1024 only.

The script performs a basic TCP connectivity check and does not perform service detection.

Disclaimer

This tool is intended for educational purposes and authorized security testing only. Do not scan systems without permission.
