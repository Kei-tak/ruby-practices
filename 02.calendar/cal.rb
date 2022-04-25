require 'date'
require 'optparse'

today = Date.today

params = ARGV.getopts("m:y:", "month:", "year:")
if params["m"]
  month = params["m"].to_i
elsif params["month"]
  month = params["month"].to_i
else
  month = today.month
end

if params["y"]
  year = params["y"].to_i
elsif params["year"]
  year = params["year"].to_i
else
  year = today.year
end

day_first = Date.new(year, month,  1)
day_last = Date.new(year, month, -1)

days_week = ["日", "月", "火", "水", "木", "金", "土"]

puts "      #{month}月 #{year}"

if day_first.sunday?
  print (" #{days_week.join(" ")}")
else
  puts (" #{days_week.join(" ")}")
end

day_first.wday.times {print "   "}

days = day_first..day_last

days.each do |day|
  puts  if day.sunday?
  if day == today
    print " \e[30;47;5m#{day.mday}\e[0m".rjust(3)
    next
  end
  print "#{day.mday}".rjust(3)
end
puts
