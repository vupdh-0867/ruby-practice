#while loop
i = 0
while i < 5 or i < 10
  puts "vu"
  i = i + 1
end
j = 0
begin
  puts "vu #{j}"
  j = j + 1
  redo if j == 10
end while j < 5 or j < 10
#until loop
until true
end
begin
end until true
#collection.each do|element|       end
for i in 0..5
end

array = [1, 2, 3, 4, 5]
sum = 0
array.inject { |sum, e| sum += e }
puts sum

10.times do
end
