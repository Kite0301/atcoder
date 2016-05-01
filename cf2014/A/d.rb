a,k = gets.chomp.split.map(&:to_i)
a = a.to_s
arr = []
use = []
ans = ""
flag = 0
(a.size).times{|i|
	if flag != 0
		break
	end
	t = a[i].to_i
	if use.size < k
		ans << a[i]
		if !use.include?(t)
			use << t
		end
	else
		u = t
		d = t
		9.times{
			u += 1
			d -= 1
			if use.include?(u)
				flag += 1
			end
			if use.include?(d)
				flag += 2
			end
			if flag != 0
				@u = u.to_s
				@d = d.to_s
				break
			end
		}
	end
}

if flag == 0
	p 0
else
	brr = []
	if flag != 2
		(a.size-ans.size-1).times{
			@u += use.min.to_s
		}
		brr << ((ans + @u).to_i - a.to_i).abs
	end
	if flag != 1
		(a.size-ans.size-1).times{
			@d << use.max.to_s
		}
		brr << ((ans + @d).to_i - a.to_i).abs
	end
	p brr.min
end

# むじゅい