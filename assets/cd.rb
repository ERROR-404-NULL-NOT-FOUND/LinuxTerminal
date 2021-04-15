#change directory command
def cd(path, pathTo)
  begin
    if !File.directory?(path+"/"+pathTo)
      throw NotADir#invoked if the path i not valid
    else
      return path+"/"+pathTo#effectivly changes the current directory
    end
  rescue
    puts "Not a valid directory"
  end
end