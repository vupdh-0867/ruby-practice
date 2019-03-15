require "./Module.rb"

class Account
  def initialize(username, password)
    @username = username
    @password = password
  end

  include Encryption

  def printEncyptionForm
    puts encrypt(@password)
  end
end

acc = Account.new("vu", "123")
acc.printEncyptionForm
