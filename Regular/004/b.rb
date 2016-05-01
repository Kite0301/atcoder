n = gets.chomp.to_i
arr = []
sum = 0
for i in 0..n-1 do
	d = gets.chomp.to_i
	arr << d
	sum += d
end
if arr.max > sum/2
	min = arr.max*2 - sum
else
	min = 0
end
p sum
p min