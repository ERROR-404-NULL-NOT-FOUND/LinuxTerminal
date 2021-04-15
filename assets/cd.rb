def cd(path, pathTo)
  begin
    if !File.directory?(path+"/"+pathTo)
      throw NotADir
    else
      return path+"/"+pathTo
    end
  rescue
    puts "Not a valid directory"
  end
end