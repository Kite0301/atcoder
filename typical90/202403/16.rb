
n = gets.to_i
a, b, c = gets.split.map(&:to_i)
N = 10_000
ans = N

N.times do |x|
  m = n - a * x
  break if m < 0

  (N-x).times do |y|
    l = m - b * y
    break if  l < 0

    if l % c == 0
      z = l / c
      ans = x + y + z if ans > x + y + z
    end
  end
end
p ans


# p Time.now - t

# n = gets.to_i
# a, b, c = gets.split.map(&:to_i)
# N = 10_000
# ans = N

# t = Time.now

# N.times do |x|
#   (N-x).times do |y|
#     r = n - a * x - b * y
#     next if r % c != 0
#     z = r / c
#     ans = x + y + z if ans > x + y + z
#   end
# end
# p ans
# p Time.now - t
