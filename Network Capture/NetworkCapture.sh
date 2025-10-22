interface="your_interface" // use command ip link to get your interface
op_dir="your_output_directory_here"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
op_file="$op_dir/capture_$timestamp.pcap"
mkdir -p "$op_dir"
echo "starting packet capture on interface $interface"
echo "output will be saved to $op_file"
sudo tcpdump -i "$interface" -w "$op_file" -s 0 -C 60 -W 1 -nn
echo "packet capture finished!"
echo "tcpdump -r $op_file"
