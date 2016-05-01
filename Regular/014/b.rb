n = gets.chomp.to_i
arr = Array.new(n)
for i in 0..n-1 do
	arr[i] = gets.chomp.to_s
end

brr = [arr[0]]

i = 1
while i < n
	if brr.include?(arr[i])
		break
	elsif arr[i][0] != arr[i-1][arr[i-1].size-1]
		break
	end
	brr[i] = arr[i]
	i += 1
end

if i == n
	puts "DRAW"
elsif i%2 == 0
	puts "LOSE"
elsif i%2 == 1
	puts "WIN"
end