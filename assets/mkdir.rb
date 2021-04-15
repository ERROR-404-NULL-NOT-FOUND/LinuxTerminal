#makes a directory
def mkdir(name,path)
  begin
    Dir.mkdir(name)
    puts path
    return
    rescue
      puts "Cannot make that directory"
      return
  end
end