n = gets.chomp.to_i
arr = Array.new(n)
for i in 0..n-1 do
	arr[i] = gets.chomp.to_i
end
arr.sort!.reverse!

ans = [0,0]
n.times do |i|
	if ans[0] > ans[1]
		ans[1] += arr[i]
	else
		ans[0] += arr[i]
	end
end
puts ans.max