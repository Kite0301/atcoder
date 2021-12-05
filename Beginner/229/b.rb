a,b = gets.split.map(&:to_i)
[a,b].min.to_s.size.times do |i|
  n = 10 ** (i+1)
  next if (a % n) + (b % n) < n

  puts 'Hard'
  exit
end
puts 'Easy'
