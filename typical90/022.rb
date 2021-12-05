a,b,c = gets.split.map &:to_i
cd = c.gcd(a.gcd(b))

p [a,b,c].sum { |n| n / cd - 1 }
