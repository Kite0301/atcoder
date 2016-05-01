def count_numbers(num)
	if num == 0
		return 0
	else
		len = num.to_s.size
		i = num/(10**(len-1))
		case i - 1
		when 0..3
			p = i
		when 4
			p = 4
		when 5..8
			p = i-1
		end
		return p*8**(len-1)
	end
end

def loop_count(num)
	total = 0
	loop{
		len = num.to_s.size
		total += count_numbers(num)
		if len == 1
			break
		elsif num/(10**(len-1)) == 4 || num/(10**(len-1)) == 9
			break
		end
		num = num % (10**(len-1))
	}
	return total
end

a,b = gets.chomp.split.map(&:to_i)
p (b+1 - loop_count(b+1)) - (a - loop_count(a))