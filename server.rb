require 'socket'

#our server location (e.g. localhost:2000)
PORT = 2000

def single_client_server

  #The TCPServer object defaults to localhost if a hostname is not provided
  server = TCPServer.open(PORT)

  loop do
    client = server.accept
    client.puts Time.now.ctime
    client.puts "Closing the connection. Bye!"
    client.close
  end
end

#single_threaded_server

def multi_client_server
  server = TCPServer.open(PORT)

  loop do
    # This differs from the example above in that a new thread is spawned for each client-to-server
    # connection so that multiple clients can interact with the serverr - a new process per client.

    Thread.start(server.accept) do |client| 
      client.puts Time.now.ctime
      client.puts "Closing the connection. Bye!"
      client.close
    end
  end
end

#multi_client_server
