n = gets.chomp.to_i
arr = Array.new(1000001, 0)
for i in 1..n do
	a,b = gets.chomp.split.map(&:to_i)
	for num in a..b do
		arr[num] += 1
	end
end
p arr.max