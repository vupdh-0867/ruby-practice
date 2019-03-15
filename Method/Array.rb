1.upto(10) do |x|
  #puts x
end

array = [2, 4, 6, 8]
# trả về mảng đã thay đổi
array.collect do |n|
  n ** 2
end
# thay đổi mảng
a = array.collect! do |n|
  n ** 2
end
p array
#
array.each_with_index { |n, i|
  array[i] += 1
}

p array
