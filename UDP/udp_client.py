import socket
client_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
server_socket_address = ('localhost', 12345)
client_socket.sendto("Hello from UDP Client!".encode(), server_socket_address)
data, _ = client_socket.recvfrom(1024)
print("Received from server:", data.decode())
client_socket.close()
