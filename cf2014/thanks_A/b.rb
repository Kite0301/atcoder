n=gets.to_i
a=[]
3.times{a<<gets.to_i}
s=a.sort!.inject(:+)
y=n% s
4.times{|i|
  (p n/s*3+i;break)if y<=0
  y-=a[-1]
  a.pop
}