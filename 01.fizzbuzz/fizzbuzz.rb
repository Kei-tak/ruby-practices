sum = 0
20.times do
  sum += 1
  if sum%15.0 == 0
    puts "FizzBuzz"
    next
  elsif sum%3.0 == 0
    puts "Fizz"
    next
  elsif sum%5.0 == 0
    puts "Buzz"
    next
  end
  puts sum
end
