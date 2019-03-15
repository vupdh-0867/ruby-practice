class Shape
  #constant variable
  PI = 3.14
  #class variable
  @@count = 0
  #constructor
  def initialize(name)
    @name = name
    @@count = @@count + 1
  end

  #accessor and getter
  attr_accessor :name

  #class method
  def self.created_shapes
    puts "there are #{@@count} of them"
  end

  #method will be overiden
  def area
    puts "N-A"
  end
end

class Rectangle < Shape
  attr_accessor :width, :height

  def initialize
    super("Rectangle")
  end

  def area
    puts "#{name} : #{width * height}"
  end

  private

  def private_method
    "private method"
  end

  protected

  def protected_method
    "protected method"
  end

  public

  def call_private
    puts "call #{private_method}"
  end

  def call_protected
    puts "call #{self.protected_method}"
  end
end

rec = Rectangle.new
rec.width = 5
rec.height = 3
puts rec.call_private
