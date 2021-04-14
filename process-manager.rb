require_relative "assets/echo.rb"
require_relative "assets/ls.rb"
require_relative "assets/cd.rb"
require_relative "assets/mkdir.rb"
require_relative "assets/rm.rb"

def Process()
  dir = '.'
  while TRUE
    print "[root@#{dir}] "
    response = gets.to_s
    args = response.split(" ",-1)
    if args[0] == 'echo'
      echo(args[1..args.length()])
    elsif args[0] == 'ls'
      ls(dir)
    elsif args[0] == 'cd'
      path = cd(dir,args[1..args.length])
    elsif args[0] == 'mkdir'
      mkdir(args[1], dir)
    elsif args[0] == 'rm'
      path = rm(args[1..args.length],dir)
    end
  end
end