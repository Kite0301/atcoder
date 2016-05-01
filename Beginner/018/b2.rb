s = gets.chomp.to_s
n = gets.chomp.to_i
arr = s.split("")
for i in 1..n do
	l,r = gets.chomp.split.map(&:to_i)
	fir = ""
	for i in 1..l do
		fir << arr[]
	end
end