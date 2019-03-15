class Student
  def initialize(student_id, student_name)
    @student_id = student_id
    @student_name = student_name
  end

  def show
    puts "Student ID and Name: ", @student_id, @student_name
  end
end

student1 = Student.new(1, "vu")
student2 = Student.new(2, "Nam")

student1.show
student2.show

puts student1.instance_eval("@student_id")
p student1
