n = gets.chomp.to_i
arr = Array.new(n)
for i in 0..n-1 do
	arr[i] = gets.chomp.to_i
end
arr.sort!
case n
when 1,2
	puts arr.max
when 3
	puts [arr[0]+arr[1], arr[2]].max
when 4
	if arr[0]+arr[1]+arr[2] - arr[3] <= 0
		puts arr[3]
	else
		puts [arr[0]+arr[3], arr[1]+arr[2]].max	
	end
end