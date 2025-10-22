read -p "Action: " ACTION
read -p "TARGET_IP: " TARGET_IP
if [ "$ACTION" == "$TARGET_IP" ]; then
  echo "usage: to allow block <ip> or <ip>"
  exit 1
fi
case "$ACTION" in
  "allow")
    sudo iptables -A INPUT -s "$TARGET_IP" -j ACCEPT
    echo "allowed IP: $TARGET_IP"
    ;;
  "block")
    sudo iptables -A INPUT -s "$TARGET_IP" -j DROP
    echo "Blocked IP: $TARGET_IP"
    ;;
  *)
    echo "Invalid action! use 'allow' or 'block'"
    exit 1
    ;;
esac
