n = gets.to_i
s = gets.chomp.to_s
if n<2
	p 1
else
	hash = {}
	for i in 0..n-2 do
		str = s[i] + s[i+1]
		if hash[str]
			hash[str] += 1
		else
			hash[str] = 1
		end
	end
	arr = hash.sort {|a,b| a[1]<=>b[1]}.reverse
	c=[]
	(arr.size).times{
		t = s.gsub(arr[0][0],"L")
		l = t.count("L")
		arr.shift
		r = 0
		arr.each{|a|
			u = t.gsub(a[0],"R")
			if u.count("R") > r
				r = u.count("R")
			end
		}

		c << l+r
	}
	p n-c.max
end