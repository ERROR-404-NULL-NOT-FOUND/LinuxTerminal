require 'fileutils'
def rm(files,path)
  begin
    files.each do |file|
      if File.directory?(path+'/'+file)==1#broken
        fileUtils.rm_rf(path+"/"+file)
      else 
        File.delete(path+"/"+file)#works
      end
    rescue
    end
  end
end