r,c,k = gets.chomp.split.map(&:to_i)
n = gets.chomp.to_i
rrr = []
crr = []
arr = []

count = []
for i in 0..(r.to_s + c.to_s).to_i + 1 do
	count[i] = 0
end

for i in 0..n-1
	a,b = gets.chomp.split.map(&:to_i)
	rrr[i] = a
	crr[i] = b
	q = a.to_s + b.to_s
	count[q.to_i] = -1
end

for i in 1..r do
	drop = 0
	drop += rrr.count(i)
	for num in 1..c do
		p = i.to_s + num.to_s
		count[p.to_i] = count[p.to_i] + drop + crr.count(num)
 	end
end

p count.count(k)