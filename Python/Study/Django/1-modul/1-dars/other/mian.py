import socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)


if __name__ == '__main__':
    s.connect(("www.google.com", 80))
    s.send(b"GET /images/branding/googleg/1x/googleg_standard_color_128dp.png HTTP/1.1\r\nHOST: www.google.com\r\n\r\n")
    data = s.recv(10000)
    print(data)
