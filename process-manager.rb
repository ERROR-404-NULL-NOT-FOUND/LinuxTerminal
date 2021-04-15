require_relative "assets/echo.rb"
require_relative "assets/ls.rb"
require_relative "assets/cd.rb"
require_relative "assets/mkdir.rb"
require_relative "assets/rm.rb"
require_relative "assets/clear.rb"
require_relative "assets/ping.rb"

def Process()
  dir = '.'
while true
    print "[root@#{dir.split('/',-1)[-1]}] "
    response = gets.to_s
    args = response.split(" ",-1)
    if args[0] == 'echo'
      echo(args[1..args.length()])
    elsif args[0] == 'ls'
      ls(dir)
    elsif args[0] == 'cd'
      path = ""
      args = args[1..args.length]
      args.each do |i|
        path+=i
      end
      puts path
      dir = cd(dir,path)
    elsif args[0] == 'mkdir'
      mkdir(args[1], dir)
    elsif args[0] == 'rm'
      rm(args[1..args.length],dir)
    elsif args[0] == 'clear'
      clear()
    elsif args[0] == 'ping'
      ping(args[1])
    else
      puts "why u try break terminal"
    end
  end
end