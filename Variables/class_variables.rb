class School
  @@no_of_students = 650
end

class V < School
  @@no_of_students = 75
end

class VI < School
  @@no_of_students = 80
end

puts School.class_eval("@@no_of_students")
puts V.class_eval("@@no_of_students")
puts VI.class_eval("@@no_of_students")
