=begin
  Linux terminal copy
*****************************************
  Developed by Vance Green and Noah Smith
*****************************************
  Please do not use any code without credit
=end


#***********************************
#includes all of the command files contained within /assets/
require_relative "assets/echo.rb"
require_relative "assets/ls.rb"
require_relative "assets/cd.rb"
require_relative "assets/mkdir.rb"
require_relative "assets/rm.rb"
require_relative "assets/clear.rb"
require_relative "assets/ping.rb"
#***********************************



#***********************************
def Process()
  dir = '.' #set up the working directory
  while true

      #***********************************
      
      print "[root@#{dir.split('/',-1)[-1]}] "#attempnting to look like the arch linux terminal
      response = gets.to_s #input and convert to string
      args = response.split(" ",-1) #split the input into arguments
      
      #***********************************
      
      #echo command
      if args[0] == 'echo'
        echo(args[1..args.length()])
      
      #***********************************

      #list system command
      elsif args[0] == 'ls'
        ls(dir)

      #***********************************

      #change directory command
      elsif args[0] == 'cd'
        path = ""
        args = args[1..args.length]
        args.each do |i|
          path+=i
        end
        puts path
        dir = cd(dir,path)
      
      #***********************************

      #make directory command
      elsif args[0] == 'mkdir'
        mkdir(args[1], dir)

      #***********************************
      
      #remove command
      elsif args[0] == 'rm'
        rm(args[1..args.length],dir)
      
      #***********************************

      #clear command
      elsif args[0] == 'clear'
        clear()
      
      #***********************************
      
      #does not work on repl due to safty concernes
      elsif args[0] == 'ping'
        ping(args[1])

      #***********************************
      
      #this is invoked if the first word is not a valid command
      else
        puts "why u try break terminal"#Noah's sense of humor lol
    end
  end
end
#***********************************