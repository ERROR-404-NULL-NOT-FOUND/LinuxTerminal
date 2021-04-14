require 'fileUtils'
def rm(files,path)
  files.each do |file|
    if File.directory?(file)
      fileUtils.rm_rf(path+"/"+file)
    else 
      File.delete(path+"/"+file)
    end
  end
end