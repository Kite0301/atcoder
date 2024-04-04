a, b = gets.split.map &:to_i
x = a.lcm(b)
puts x > 10 ** 18 ? :Large : x
