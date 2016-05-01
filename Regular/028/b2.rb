n,k = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)
hash = {}
for i in 0..arr.size-1 do
	hash[i] = arr[i]
end
p hash.sort {|a,b| a[1]<=>b[1]}