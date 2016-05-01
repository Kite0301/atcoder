def check(am,arr,ex)
	for i in 1..10 do
		if i != ex && am[1] < arr.count(i)
			am[0] = i
			am[1] = arr.count(i)
		end
	end
	return am
end

n,c = gets.chomp.split.map(&:to_i)
eve = []
odd = []
for i in 1..n do
	if i%2 == 0
		odd << gets.chomp.to_i
	else
		eve << gets.chomp.to_i
	end
end
em = check([0,0],eve,0)
om = check([0,0],odd,0)
if em[0] == om[0]
	if em[1] <=  om[1]
		em = check([0,0],eve,om[0])
	else
		om = check([0,0],odd,em[0])
	end
end

p (eve.size - em[1] + odd.size - om[1]) * c