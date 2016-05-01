def check(a,b,c,d)
	t = (a**2 + b**2 - c**2)**0.5
	h = 2*b*(a*c - b*t)/(a**2 + b**2) + t
	if h <= d
		return "YES"
	else
		return "NO"
	end
end

book = gets.chomp.split.map(&:to_f)
a = book.max
b = book.min
n = gets.chomp.to_i
ans = Array.new(n)
for i in 0..n-1 do
	box = gets.chomp.split.map(&:to_f)
	c = box.max
	d = box.min
	if b > d
		ans[i] = "NO"
	elsif a <= c
		ans[i] = "YES"
	else
		ans [i] = check(a,b,c,d)
	end
end
puts ans