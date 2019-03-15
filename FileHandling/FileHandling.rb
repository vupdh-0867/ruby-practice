#creating file
class FileHandling
  def createFile
    my_file = File.new("simple_file.txt", "w")
    my_file.close
  end

  def openFile
    my_file = File.open("simple_file.txt", "w+")
    my_file.puts "I wrote in this file"
    my_file.close
  end

  def deleteFile
    File.delete("simple_file.txt")
  end

  def appending_to_a_file
    logFile = File.open("log.txt", "a")
    10.times do
      logFile.puts "server start at #{Time.new}"
    end
    logFile.close
    result = File.read("log.txt")
    puts result.split("\n").class
  end

  def read_from_remote
  end
end

require "json"
require "open-uri"
result = JSON.parse open("https://gist.githubusercontent.com/dieunb/7d391d550e20c71999eb4f4895551fbd/raw/7ca8b2eb83ec2a65290f135bad595b9d48c85ef5/gistfile1.txt").read
puts result.class
resultFile = File.new("result.html", "w+")
resultFile.puts("<ul>")
resultFile.puts("<li> #{result["school_center"]} </li>")
resultFile.puts("<li> #{result["class_name"]} </li>")
resultFile.puts("<li>")
resultFile.puts("<ul>")
student = result["students"]
student.each do |element|
  resultFile.puts "\t<li>#{element["name"]}</li>"
  resultFile.puts "\t<li>#{element["age"]}</li>"
  resultFile.puts "\t<li>#{element["sex"]}</li>"
end
resultFile.puts("</ul>")
resultFile.puts("</li>")
resultFile.puts("</ul>")
resultFile.close
