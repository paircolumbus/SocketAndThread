require 'socket'

#our server location (e.g. localhost:2000)
PORT = 2000

def single_client_server

  #The TCPServer object defaults to localhost if a hostname is not provided
  server = TCPServer.open(PORT)

  loop do
    client = server.accept
    sleep 0.1 ##simulates laged db hit
    #client.puts Time.now.ctime
    client.puts "Closing the connection. Bye!"
    client.close
  end
end

#single_client_server
#runs in about 10 seconds, as mathematically expected (100 * .1secs)

def multi_client_server
  server = TCPServer.open(PORT)

  #puts server.methods

  loop do
    # This differs from the example above in that a new thread is spawned for each client-to-server
    # connection so that multiple clients can interact with the serverr - a new process per client.

    Thread.start(server.accept) do |client|
      sleep 0.1 ##simulates laged database hit
      #client.puts Time.now.ctime
      client.puts "Closing the connection. Bye!"
      client.close
    end
  end
end

multi_client_server
#runs in about .5secs, because the requests are handled each on a single thread.
#because they are run on their own thread, the "db hit" allows the MRI to
#move back onto other Threads and fulfilling their requests.
