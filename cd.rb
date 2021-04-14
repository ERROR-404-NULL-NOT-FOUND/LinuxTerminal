def cd(path, pathTo)
  if pathTo.class == String
    pathTo = [pathTo]
  end
  newPath=pathTo[0]
  for i in 1..pathTo.length()
    newPath+=" "+i.to_s
  end
  begin
    if !File.directory?(path+"/"+newpath)
      throw NotADir
    else
      return path+"/"+newpath
    end
  rescue
    puts "Not a valid directory"
  end
end