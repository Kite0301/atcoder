n = gets.chomp.to_i
res = 2025 - n
hash = {}
for i in 1..9 do
	if res%i == 0 && (res/i).to_s.size == 1
		hash[i] = res/i
	end
end
arr = hash.to_a
for i in 0..arr.size-1 do
	puts "#{arr[i][0]} x #{arr[i][1]}"
end