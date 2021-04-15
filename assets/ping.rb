require 'ping'
def ping(host)
  Ping.pingecho host, 10, 80
end