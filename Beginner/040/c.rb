n=gets.to_i
a=gets.split.map &:to_i
c=[]
s=a.pop
f=a.pop
c<<0
c<<(s-f).abs
(n-2).times{
  m=a.pop
  c<<[(s-m).abs+c[-2],(f-m).abs+c[-1]].min
  s=f
  f=m
}
p c[-1]
