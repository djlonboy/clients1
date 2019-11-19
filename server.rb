require 'socket'

server = TCPServer.new(2345)

socket = server.accept

while true do
  socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
  name = socket.gets.chomp
  socket.puts "THAT'S A NICE NAME #{name}"
  sleep 1
end

socket.close
