require 'socket'
 
host = 'localhost'
port = 8000                           

puts "Enter string to convert to uppercase by echo.php: \n"
string = gets
puts "\n"

request = "GET /echo.php?message=" + string + "test HTTP/1.1\r\n"
request += "Host: localhost\r\n"
request += "Connection: close\r\n"
request += "User-Agent: MyAwesomeUserAgent/1.0.0\r\n"
request += "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\r\n"
request += "Accept-Charset: ISO-8859-1,UTF-8;q=0.7,*;q=0.7\r\n"
request += "Cache-Control: no-cache\r\n"
request += "\r\n"
säojfnhpoWÖFÄOJ<NHDSÄOFJBN
puts "Connecting to server...."
socket = TCPSocket.open(host,port)
puts "Connected to server\n\n"

puts "Sending request to server...."
socket.send(request, 0)
puts "Sent request to server\n\n"

puts "Waiting for response...."
response = socket.read
puts "Received response\n\n"

headers,body = response.split("\r\n\r\n", 2) 

print "Response is: \n\n"

print body
