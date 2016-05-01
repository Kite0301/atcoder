arr = gets.chomp.split("")
arr = arr.sort!
likes = []
for n in 0..4 do
	for i in 0..4 do
		likes.push("#{arr[n]+arr[i]}")
	end
end

num = gets.chomp.to_i
puts likes[num-1]