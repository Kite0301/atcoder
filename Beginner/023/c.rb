r,c,k = gets.chomp.split.map(&:to_i)
n = gets.chomp.to_i
arr = []
for i in 0..n-1
	a,b = gets.chomp.split.map(&:to_i)
	arr[i] = (a.to_s + b.to_s).to_i
end

count = 0
for i in 1..r do
	drop = 0
	drop += arr.count {|item| item / 10 == i }
	for num in 1..c do
		add = drop
		add += arr.count {|item| item % 10 == num }
		if arr.index((i.to_s + num.to_s).to_i)
			add += -1
		end
		if add == k
			count += 1
		end
	end
end

p count