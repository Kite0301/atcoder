r,c,k = gets.chomp.split.map(&:to_i)
n = gets.chomp.to_i
rrr = []
crr = []
arr = []
for i in 0..n-1
	a,b = gets.chomp.split.map(&:to_i)
	rrr[i] = a
	crr[i] = b
	arr[i] = (a.to_s + b.to_s).to_i
end

rrrc = [0]
crrc = [0]
for i in 1..r do
	rrrc[i] = rrr.count(i)
end

for i in 1..c do
	crrc[i] = crr.count(i)
end

p rrrc
p crrc