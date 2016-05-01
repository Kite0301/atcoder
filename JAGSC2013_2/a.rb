n,W,H=gets.split.map(&:to_i)
b=Array.new(W+1,0)
c=Array.new(H+1,0)
n.times{
	x,y,w=gets.split.map(&:to_i)
	s=[0,x-w].max
	g=[W,x+w].min
	(s..g).each{|i|
		b[i]+=1
	}
	s=[0,y-w].max
	g=[H,y+w].min
	(s..g).each{|i|
		c[i]+=1
	}
}
if b.include?(0)&&c.include?(0)
	puts "No"
else
	puts "Yes"
end