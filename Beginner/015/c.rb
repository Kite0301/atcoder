n,k = gets.chomp.split.map(&:to_i)
arr = Array.new(n,Array.new(k))
for i in 0..n-1 do
	arr[i] = gets.chomp.split.map(&:to_i)
end
base = arr[0]
test = []
for num in 1..n-1
 brr = []
 for i in 0..base.size-1 do
 	for h in 0..arr[num].size-1 do
 		hai = base[i] ^ arr[num][h]
 		brr << hai
 	end
 end
 base = brr.uniq
end
if base.index(0)
	puts "Found"
else
	puts "Nothing"
end