a = gets.chomp.to_s
l = a.size
ans = 0
if l == 1
	ans = 0
else
	flag = 0
	for i in 1..l/2 do
		if a[i-1] != a[l-i]
			flag += 1
		end
	end

	if l%2 == 1 && flag == 0
		ans = 25*(l-1)
	elsif flag == 1
		ans = 25*(l-2) + 24*2
	else
		ans = 25*l
	end
end
p ans