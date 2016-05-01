n=gets.to_i
m=n/2
x=0
s=gets
n%2>0?x=-1:m.times{|i|x+=1 if s[i]!=s[m+i]}
p x