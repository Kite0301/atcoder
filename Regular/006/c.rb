a=[]
gets.to_i.times{w=gets.to_i
(a.sort!.size).times{|i|(a.slice!(i);break)if w<=a[i]}
a<<w}
p a.size


a=[]
gets.to_i.times{w=gets.to_i
(a.size).times{|i|
(a[i]=w;break)if w<=a[i]}
a<<w if !a.index(w)}
p a.size