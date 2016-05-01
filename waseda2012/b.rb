n = gets.chomp.to_i
arr = Array.new(n)
for i in 0..n-1 do
	arr[i] = gets.chomp.to_s
end
p arr.sort
print arr.sort[0]
puts arr.sort[1]