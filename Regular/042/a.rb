n,m = gets.chomp.split.map(&:to_i)
arr = Array.new(m)
brr = Array.new(n) { |i| i+1 }
for i in 0..m-1 do
	arr[i] = gets.chomp.to_i
end
arr.reverse!.uniq!

ans = arr + brr
ans.uniq!

puts ans