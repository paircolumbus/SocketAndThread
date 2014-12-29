require 'socket'

host = "www.google.com"
port = 80 
path = "/index.htm"

# When you navigate to a url, you're actually going to www.google.com:80 as this is the default port for web traffic. Email, FTP and other protocols use other default ports

# Our HTTP request we send to fetch a file
request = "GET #{path} HTTP/1.0\r\n\r\n"

socket = TCPSocket.open(host, port) #Connects to server at this location

socket.print(request) #Sends request string asking for a file named 'index.htm'

response = socket.read #Reads server response

headers, body = response.split("\r\n\r\n", 2) #Splits response into header & body

puts <<-EOS
+_+_+_+_+_+_+_+_+
HEADERS
+_+_+_+_+_+_+_+_+\n
EOS

print headers

puts <<-EOS
\n+_+_+_+_+_+_+_+_+
BODY
+_+_+_+_+_+_+_+_+\n
EOS

print body
