n,m=gets.split.map &:to_i
x,y=gets.split.map &:to_i
a=gets.split.map &:to_i
b=gets.split.map &:to_i
z=0
c=[]
while a[0]
	c<<a[0]
	b.map!{|i|
		if i<c[-1]+x
			i=nil
		else
			break
		end
	}
	b.compact!
	if b[0]
		c<<b[0]
	else
		break
	end
	a.map!{|i|
		if i<c[-1]+y
			i=nil
		else
			break
		end
	}
	a.compact!
end
p c.size/2