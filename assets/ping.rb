#broken on repl, so cannot confirm if works
require 'ping'
def ping(host)
  Ping.pingecho host, 10, 80
end