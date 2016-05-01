a,b = gets.chomp.split.map(&:to_s)
num = a << b
p num.to_i * 2