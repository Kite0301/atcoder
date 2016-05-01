n,k=gets.split.map &:to_i
b=gets.split.map &:to_i
(n-1).times{
	a=gets.split.map &:to_i
	c=[]
	(b.size).times{|j|
	 	k.times{|h|
	 		c<<(b[j]^a[h])
	 	}
	 }
	b=c.uniq
}
if b.index(0)
	puts "Found"
else
	puts "Nothing"
end