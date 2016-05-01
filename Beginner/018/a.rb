arr = [gets.chomp.to_i, gets.chomp.to_i, gets.chomp.to_i]
brr = arr.sort.reverse
for i in 0..2 do
	p brr.index(arr[i]) + 1
end