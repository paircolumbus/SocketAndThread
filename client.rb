require 'socket'

hostname = 'localhost'
port = 2000

start_time = Time.now

$stdout.sync = true

threads = []

100.times do
  threads << Thread.start() do
    s = TCPSocket.open(hostname, port)

    while line = s.gets
      puts line.chop
    end

    s.close
  end
end

threads.each do |thr|
  thr.join
end

end_time = Time.now

puts end_time - start_time
