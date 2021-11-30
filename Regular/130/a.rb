n = gets.to_i
s = gets.chomp.to_s

def f(num)
  num * (num + 1) / 2
end

total = 0
c = 0
(n-1).times.each do |i|
  if s[i] == s[i+1]
    c += 1
  else
    total += f(c)
    c = 0
  end
end
total += f(c) if c.positive?
p total
