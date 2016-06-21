# n=gets.to_i-2
# a=gets.split.map &:to_i
# c=[]
# s=a.pop
# f=a.pop
# c<<0
# c<<(s-f).abs
# n.times{
#   m=a.pop
#   c<<[(s-m).abs+c[-2],(f-m).abs+c[-1]].min
#   s=f
#   f=m
# }
# p c[-1]



# -------------------------------------------


n=gets.to_i-2
a=gets.split.reverse.map &:to_i
c=[0,(a[0]-a[1]).abs]
n.times{|i|
  s,f,m=a[i..2+i]
  c<<[(s-m).abs+c[-2],(f-m).abs+c[-1]].min
}
p c[-1]
