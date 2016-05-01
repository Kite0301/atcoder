s = gets.chomp.to_s
sample = ["A","B","C","D","E","F"]
for i in 0..5 do
	print s.count(sample[i])
	if i != 5
		print " "
	end
end
puts ""