def fivejump(num)
	return num/10 + (num%10)/5
end

a,b = gets.chomp.split.map(&:to_i)
gap = (a - b).abs
ans = 0
case gap%5
when 0
	ans += fivejump(gap)
when 1
	ans += 1
	ans += fivejump(gap-1)
when 2
	ans += 2
	ans += fivejump(gap-2)
when 3
	ans += 2
	ans += fivejump(gap+2)
when 4
	ans += 1
	ans += fivejump(gap+1)
end
puts ans