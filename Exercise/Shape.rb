class Shape
  attr_accessor :name

  def initialize(name = "N/A")
    self.name = name
  end
end

class Square < Shape
  attr_accessor :edge

  def initialize(edge = 0)
    super("Square")
    self.edge = edge
  end

  def area
    puts "area = #{self.edge * self.edge}"
  end
end

class Triangle < Shape
  attr_accessor :heigth, :width

  def initialize(heigth = 0, width = 0)
    super("Triangle")
    self.heigth = heigth
    self.width = width
  end

  def area
    result = (self.width * self.heigth).to_f / 2
    puts "area = #{result}"
  end
end

shapeArr = [Triangle.new(4, 5), Square.new(1.5), Triangle.new(6, 7)]
shapeArr.each do |shape|
  shape.area
end

shapeArr.each_index do |index, element|
  shapeArr[index].area
end
puts "yes"
