require 'socket'

socket = TCPSocket.new('localhost', 2345)

while true do

  puts socket.gets
  puts "Why are you shouting!?"
  socket.puts "Rob"
  puts socket.gets

end
