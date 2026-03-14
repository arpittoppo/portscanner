#!/bin/bash

read -p "Enter the IP/Domain you want to scan: " target
read -p "Enter port number OR type --all to scan all ports: " port

if [ -z "$target" ]; then
    echo "Usage:$0 <enter domain or ip>"
    exit 1
fi

scan_port() {

    port=$1

    timeout 1 bash -c "echo > /dev/tcp/$target/$port" 2>/dev/null && \
    echo "[OPEN] Port $port"

}

echo "[*]Scanning $target ..."

# for full scan
if [ "$port" == "--all" ]; then

    for p in {1..1024}
    do
        scan_port $p &
    done

    wait
    echo "Full scan completed"

# for specific port
else

    scan_port $port

fi