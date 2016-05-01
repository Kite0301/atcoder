n = gets.chomp.to_i
arr = [0,0]
count = [0]
money = [0]
# countとmoneyの1からn番目を0にセット
for i in 1..n do
	count[i] = 0
	money[i] = 0
end

for i in 2..n do
	arr[i] = gets.chomp.to_i
	count[arr[i]] += 1
end

i = n
while i > 0
	if count[i] == 0
		money[i] = 1
	elsif count[i] == 1
		num = arr.index(i)
		money[i] = money[num] * 2 + 1
	else
		money[i] = 1
		unders = []
		for k in 0..count[i]-1 do
			num = arr.index(i)
			unders[k] = money[num]
			arr[num] = 0
		end
		money[i] += unders.max + unders.min
	end
	i += -1
end

p money[1]