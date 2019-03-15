require "digest"

module Encryption
  def encrypt(string)
    Digest::SHA2.hexdigest(string)
  end
end

module Foo
  def self.extended(base)
    puts "method module inv#{base} has been extended with module #{self}"
  end

  def self.included(klass)
  end

  def instance_method
    puts "instance method"
  end
end

class Bar
  CONST = "constant"
  attr_accessor :adsad
  @@vu = "vu"

  def initialize
    @adsad = "adasd"
  end

  #extend Foo
  #include Foo
end

bar = Bar.new
bar.instance_method
