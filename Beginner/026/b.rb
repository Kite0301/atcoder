n = gets.chomp.to_i
sum = 0
arr = []
for i in 0..n-1 do
	arr[i] = gets.chomp.to_i
end
arr = arr.sort!.reverse
for i in 0..n-1 do
	r = arr[i]
	if i%2 == 0
		sum += r*r
	else
		sum += -(r*r)
	end
end

pai = Math::PI

p sum * pai