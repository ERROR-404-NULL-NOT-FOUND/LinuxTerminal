#echo command, pretty self-explanitory
def echo(string)
  string.each do |i|
    print i + " "
  end
  puts  ""
end