n = gets.chomp.to_i
sum = 0
arr = Array.new(9,".")
for i in 1..n do
	s = gets.chomp.to_s
	for num in 0..8 do
		arr[num] = arr[num] + s[num]
	end
end

arr.each do |k|
	for i in 1..n do
		if k[i] == "x"
			sum += 1
		elsif k[i] == "o" && k[i-1] != "o"
			sum += 1
		end	
	end
end

puts sum