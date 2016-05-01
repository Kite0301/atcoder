n = gets.chomp.to_i
arr = [0,0,0,1]
if n < 3
	p 0
else
	for i in 4..n do
		arr[i] = (arr[i-1] + arr[i-2] + arr[i-3]) % 10007
	end	
	p arr.last
end