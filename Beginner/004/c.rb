n = gets.chomp.to_i
arr = [1,2,3,4,5,6]
n = n%30
for i in 0..n-1 do
	d = arr[i%5]
	arr[i%5] = arr[i%5 + 1]
	arr[i%5 + 1] = d
end
for i in 0..5 do
	print arr[i]
end
puts ""