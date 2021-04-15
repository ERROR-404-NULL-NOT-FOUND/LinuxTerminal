def ls(dir)
  files = Dir.entries(dir)
  files.each do |i|
    if File.directory?(i)
      puts i +" dir"
    else
      puts i + "  file"
    end
  end
end