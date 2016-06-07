a=[]
b=[]
gets.to_i.times{s,p=gets.split;a<<s;b<<p.to_i}
x=b.max
y=b.inject(:+)
puts x*2<y ? 'atcoder' : a[b.index(x)]
