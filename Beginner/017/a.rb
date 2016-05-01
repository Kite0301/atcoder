ans = 0
i = 0
while i < 3
s,e = gets.chomp.split.map(&:to_i)
ans += s * e / 10
i += 1
end
p ans