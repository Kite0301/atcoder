n,m=gets.split.map &:to_i
a=gets.split.sort.map &:to_i
b=gets.split.sort.map &:to_i
q='YES'
if b[-1]>a[-1]
	q='NO'
else
	m.times{|i|
		l=a.size
		if l<1
			q='NO'
			break
		end
		l.times{
			if a[0]<b[i]
				a.shift(1)
			else
				a.shift(1)
				break
			end
		}
	}
end
puts q