require "date"
require "active_support/all"
require "pry"

today = Date.today
puts today.strftime("%B %Y").center(20)

weeks = %w(Su Mo Tu We Th Fr Sa)
weeks.each do |week|
  print "#{week} "
end
puts

# 今月末の日にちを取得
day_end = (today.end_of_month).day
days = (1..day_end).to_a

day_first = today.beginning_of_month
# 1日は何曜日かを数字で取得
day_count = day_first.wday

day_count.times do
  # 配列の先頭に空文字を追加
  days.unshift(" ")
end

days.each_slice(7) do |day|
  puts day.map { |n| n.to_s.rjust(2) }.join(" ")
end
