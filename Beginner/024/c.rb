n,d,k = gets.chomp.split.map(&:to_i)
l = Array.new(d)
r = Array.new(d)
# rootはlからrに行くのにかかる最短日数がroot[r[l]]
root = Array.new(n,Array.new(n,nil))

for i in 0..d-1 do
	l[i],r[i] = gets.chomp.split.map(&:to_i)
	if root[r[i][l[i]]]
		root[r[i][l[i]]] = i
	end
	brr = root[l]

end
ans = Array.new(k)

