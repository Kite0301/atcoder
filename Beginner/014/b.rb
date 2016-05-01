n,x = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
sum = 0
x = x.to_s(2)
min = n - x.size
for i in 1..min do
	x << "0"
end

for i in 0..n-1 do
	if x[i] == "1"
		sum += arr[i]
	end
end
p sum