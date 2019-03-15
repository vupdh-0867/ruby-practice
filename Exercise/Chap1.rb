i = 1
puts "Select an option below:", "1. Multify table", "2. Sum of a array", "3. Print square triangle", "4. Print pyramid", "5. Exit"
print "Your option: "
option = gets.chomp.to_i
case option
when 1
  puts "which table do you want to show (1~9): "
  table = gets.chomp.to_i
  case table
  when 1
    until i == 10
      puts "1 x #{i} = #{1 * i}"
      i = i + 1
    end
    i = 1
  when 2
    until i == 10
      puts "2 x #{i} = #{2 * i}"
      i = i + 1
    end
    i = 1
  when 3
    until i == 10
      puts "3 x #{i} = #{3 * i}"
      i = i + 1
    end
    i = 1
  when 4
    until i == 10
      puts "4 x #{i} = #{4 * i}"
      i = i + 1
    end
    i = 1
  when 5
    until i == 10
      puts "5 x #{i} = #{5 * i}"
      i = i + 1
    end
    i = 1
  when 6
    until i == 10
      puts "6 x #{i} = #{6 * i}"
      i = i + 1
    end
    i = 1
  when 7
    until i == 10
      puts "7 x #{i} = #{7 * i}"
      i = i + 1
    end
    i = 1
  when 8
    until i == 10
      puts "8 x #{i} = #{8 * i}"
      i = i + 1
    end
    i = 1
  when 9
    until i == 10
      puts "9 x #{i} = #{9 * i}"
      i = i + 1
    end
    i = 1
  else
    puts "table must be from 1 to 9"
  end
when 2
  i = 0
  puts "Enter number of element"
  numberOfElement = gets.chomp.to_i
  arr = []
  until i == numberOfElement
    puts "Enter element #{i + 1}"
    arr[i] = gets.chomp.to_i
    i = i + 1
  end
  i = 1
  puts "Sum = #{arr.inject { |result, element| result = result + element }}"
when 3
  print "Enter heigth: "
  heigth = gets.chomp.to_i
  until i == heigth + 1
    j = 1
    until j == i + 1
      print "*"
      j = j + 1
    end
    print "\n"
    i = i + 1
  end
when 5
  abort("Bye!")
else
  puts "Please select an option by it number"
end
