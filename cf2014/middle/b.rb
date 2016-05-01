n,m = gets.split.map &:to_i
x=y=a=[]
d = Array.new(m,Array.new(n))
n.times{|i|
	x[i],y[i] = gets.split.map &:to_i
}
m.times{|i|
	a[i] = gets.to_i
}
