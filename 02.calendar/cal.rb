require "date"
require 'optparse'

today = Date.today

params = ARGV.getopts("m:y:", "month:", "year:")
month = params["m"].to_i
year = params["y"].to_i

if params["m"].nil? && params["month"].nil?
  month = today.month
end

if params["y"].nil? && params["year"].nil?
  year = today.year
end

day_first = Date.new(year, month,  1)
day_last = Date.new(year, month, -1)

days = day_first..day_last

days_week = [" 日", "月", "火", "水", "木", "金", "土"]

print("      ",month,"月"," ",year)
puts

puts days_week.join(" ")

if day_first.monday?
  print "   "
elsif day_first.tuesday?
  print "      "
elsif day_first.wednesday?
  print "         "
elsif day_first.thursday?
  print "            "
elsif day_first.friday?
  print " 　　　　　　  "
elsif day_first.saturday?
  print "                  "
end

days.each do |dd|
  if dd.sunday?
    puts
  end
  if dd == today
    print " \e[30;47;5m#{dd.mday}\e[0m".rjust(3)
    next
  end
print "#{dd.mday}".rjust(3)
end
puts
