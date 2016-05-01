n = gets.chomp.to_i
arr = []
brr = []
crr = []
for i in 1..n do
	len = gets.chomp.split.map(&:to_i)
	len.sort!.reverse!
	arr << len[0]
	brr << len[1]
	crr << len[2]
end
p arr.max * brr.max * crr.max