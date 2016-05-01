s = gets.chomp.to_s
n = gets.chomp.to_i
for i in 1..n do
	l,r = gets.chomp.split.map(&:to_i)
	s[l-1,r-l+1] = s[l-1,r-l+1].reverse
end
puts s