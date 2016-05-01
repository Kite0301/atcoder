n=gets.to_i
a=Array.new(n+1,"")
n.times{|i|
	s,g=gets.split
	a[s.to_i]+=g
	a[g.to_i]+=s
}
@b=0
a.each_with_index{|m,i|
	if m.size>2
		@b=i
		break
	end
}
if @b<1
	p n
else
	c=a[@b][0].to_i
	d=@b
	i=2
	loop{
		if a[c].size<2
			c=a[@b][1].to_i
			d=@b
			i=2
			next
		end
		if d!=a[c][0].to_i
			d=c
			c=a[c][0].to_i
		else
			d=c
			c=a[c][1].to_i
		end
		if c==@b
			break
		end
		i+=1
	}
	p i
end