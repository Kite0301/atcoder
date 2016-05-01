a=gets.split
b=gets.split
c=gets.chop.to_s
x=[]
a.each{|i|x<<i} if b.index(c)
b.each{|i|x<<i} if a.index(c)
x.uniq!.sort!
p x.size
puts x