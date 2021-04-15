def ls(dir)
  files = Dir.entries(dir)
  files.each do |i|#for each file in current directory print file name+ if file is directory
    if File.directory?(i)
      puts i +" dir"
    else
      puts i + "  file"
    end
  end
end