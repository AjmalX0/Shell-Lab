echo "=== Network Troubleshooting Report ==="
echo -e "\n[1] Checking IP address and network interfaces:"
ip addr show
echo -e "\n[2] Default gateway:"
ip route | grep default
echo -e "\n[3] DNS resolution test:"
nslookup google.com
echo -e "\n[4] Checking connectivity to external server:"
ping -c 4 8.8.8.8
echo -e "\n[5] Traceroute to google.com:"
traceroute google.com
echo -e "\n[6] Display current connections and listening ports:"
netstat -tulnp
echo -e "\n[7] Display routing table:"
netstat -rn
echo -e "\nNetwork diagnostics completed."
