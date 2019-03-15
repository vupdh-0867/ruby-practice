s = "Phan Dang Hai Vu"
puts s.gsub!(/[ueoai]/, "*") #Ph*n D*ng H** V*
puts s.sub!(/[ueoai]/, "*") #Ph*n Dang Hai Vu
puts s.split(" ").class
p s.split(" ", 3)
puts "           vu phan      ".strip

def method_name(x, y, z)
  return x + y + z
end

puts method_name(1, 2, 3)
