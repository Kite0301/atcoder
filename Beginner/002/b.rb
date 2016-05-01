w = gets.chomp.to_s
ng = ["a","i","u","e","o"]
arr = []
for i in 0..w.size-1 do
	if ng.include?(w[i])
	else
		arr << w[i]
	end
end
puts arr.join