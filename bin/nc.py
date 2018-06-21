import socket
import sys

def netcat(hostname, port, fn):
    buf = ''
    s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
    s.settimeout(5)
    s.connect((hostname, port))
    with open(fn,'r') as f:
        s.sendall(f.read())
    s.shutdown(socket.SHUT_WR)
    s.close()
    return buf;

if __name__ == "__main__":
        HOST, PORT = "192.168.66.36", 2121
	netcat(HOST, PORT, sys.argv[1])
