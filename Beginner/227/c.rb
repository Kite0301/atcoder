n = gets.to_i

i = 1
k = 1
sum = 0
loop do
  q = n/i + 1 - i
  break if q <= 0

  k += 1 if (k+1) ** 2 == i
  s = 0
  k.times do |j|
    s += 1 if i % k == 0
  end
  # k = 1
  # m = 0
  # loop do
  #   break if i / k < k

  #   m += 1 if i % k == 0
  #   k += 1
  # end
  # p i
  # p m
  # p q
  # p '----------'
  sum += q * s
  i += 1
end

p sum
