import socket
server_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
server_socket.bind(('localhost', 12345))
print("UDP Server is listening on port 12345...")
data, addr = server_socket.recvfrom(1024)
print("Received from client:", data.decode())
server_socket.sendto("Hello from UDP Server!".encode(), addr)
server_socket.close()
