y,m,d = gets.chomp.split("/").map(&:to_i)

# うるう年の定義
def leapyearcheck(y)
	leap = false
	if y%4 == 0
		leap = true
	end
	if y%100 == 0
		leap = false
	end
	if y%400 == 0
		leap = true
	end
	return leap
end

leap = leapyearcheck(y)
check = true
case m
when 2
	if d > 29
		check = false
	elsif d == 29
		if leap
		else
			check = false
		end
	end
when 4,6,9,11
	if d == 31
		check = false
	end
end

p check