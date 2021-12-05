n = gets.to_i
list = gets.split.map(&:to_i)
m = (list.max - 3) / 7

sum = 0
list.each do |s|
  if s < 10
    sum += 1
    next
  end
  re = m.times.filter do |i|
    j = i+1
    x = s - 3*j
    y = 4*j + 3
    x % y == 0 && x / y > 0
  end
  sum += 1 if re.size == 0
end
p sum
