class Invoice
  #class method
  def self.class_method
    "class method"
  end
  #intance method
  def intance_method
    "intance method"
  end
end

p Invoice.class_method
p Invoice.new.intance_method
