def fizzbuzz(sum)
sum += 1
  if sum % 15 == 0
    puts "FizzBuzz"
  elsif sum % 3 == 0
    puts "Fizz"
  elsif sum % 5 == 0
    puts "Buzz"
  else
  puts sum
  end
end

20.times do |sum|
fizzbuzz(sum)
end
