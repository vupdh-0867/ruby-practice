orPhone = "Phan Dang Hai Vu"
# Delete Ruby-style comments

#phone = orPhone.gsub(/[d][a][d]/, "vu")
#phone = orPhone.gsub!(/[d][a][d]/, "vu")
#phone = orPhone.sub(/[d][a][d]/, "vu")
#alpabet, number, space only
phone = orPhone.match(/[^A-Za-z0-9 _]+/)
puts "Is match : #{phone}"
p phone
#dd/mm/yyyy, dd-mm-yyyy , dd.mm.yyyy
phone = orPhone.match(/^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/)
#print out all of the objects in our system
ObjectSpace.each_object(Class) { |c| puts c }
