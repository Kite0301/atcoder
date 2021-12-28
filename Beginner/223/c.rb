n = gets.to_i

list = n.times.map do
  gets.split.map &:to_i
end

times = list.map do |a, b|
  Rational(a, b)
end

total_time = times.sum
t = 0
times.each_with_index do |time, index|
  t += time
  if t >= total_time / 2
    add = total_time / 2 - t + time
    ans = list[index][0] * Rational(add, time)
    ans += list[0..(index-1)].map { |a, _| a }.sum if index != 0
    p ans.to_f
    break
  end
end

