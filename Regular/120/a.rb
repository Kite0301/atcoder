# n = gets.to_i
# list = gets.split.map(&:to_i)
# n.times do |i|
#   array = list.slice(0, i + 1)
#   mx = array.max
#   p array.each_with_index.inject(0) { |sum, (value, index)| sum + value * (i - index + 1) } + mx * (i + 1)
# end


n = gets.to_i
mx = 0
ans = 0
s = 0
gets.split.map(&:to_i).each_with_index do |a, i|
  new_mx = [mx, a].max
  s += a
  ans += s + new_mx
  if new_mx != mx
    ans += ((new_mx - mx) * i)
    mx = new_mx
  end
  p ans
end
