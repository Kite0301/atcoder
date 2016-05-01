n,a,b = gets.chomp.split.map(&:to_f)
arr = Array.new(n)
sum = 0
for i in 0..n-1 do
	arr[i] = gets.chomp.to_i
	sum += arr[i]
end
h = sum / n
la = arr.max
sm = arr.min

if la == sm
	puts -1
else
	p = b / (la - sm)
	q = a - (h * p)
	puts "#{p} #{q}"
end