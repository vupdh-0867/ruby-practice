for i in "A".."C"
  retries = 2
  begin
    puts "Executing command #{i}"
    raise "Exception #{i}"
  rescue Exception => e
    puts "\tCaught: #{e}"
    if retries > 0
      puts "\tTrying #{retries} more times\n"
      retries -= 1
      sleep 7
      retry
    end
  end
end
