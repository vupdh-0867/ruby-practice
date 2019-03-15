# a block
#{
#    puts "this is a block"
#}

# or

#do
#    puts "this is a block"
#end

proc_object_1 = Proc.new {
  puts "block 1"
}
#or
proc_object_2 = Proc.new do |x, y|
  puts "block 2 with #{x} #{y}"
end
proc_object_1.call
proc_object_2.call(1, 2)
#lambda

lambda_object = lambda do |a, b|
  #do sth
end

def foo
  p "a"
  yield(1)
  p "b"
end

foo { |a|
  puts "This is yield #{a}"
}
