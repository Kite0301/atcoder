n = gets.chomp.to_i
arr = Array.new(n)
for i in 0..n-1 do
	a,b,c,d,e = gets.chomp.split.map(&:to_f)
	arr[i] = a + b + c + d + e*110.0/900.0
end
puts arr.max