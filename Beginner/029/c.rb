n = gets.chomp.to_i

arr = ["a","b","c"]
brr = [""]

n.times{
	crr = []
	for i in 0..2
		for h in 0..brr.size-1 do
			crr << arr[i] + brr[h]
		end
	end
	brr = []
	brr = crr
}

puts brr