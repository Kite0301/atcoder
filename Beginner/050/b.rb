n = gets.to_i
times = gets.chop.split.map(&:to_i)
sum = times.inject(:+)
m = gets.to_i
m.times{
  idx, x = gets.chop.split.map(&:to_i)
  idx -= 1
  diff = times[idx] - x
  puts sum - diff
}
