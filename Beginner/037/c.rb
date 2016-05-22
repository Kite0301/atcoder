n,k=gets.split.map &:to_i
a=gets.split.map &:to_i
x=0
n.times{|i|x+=a[i]*[i+1,k,n-i].min}
p x


n,k=gets.split.map &:to_i;a=gets.split.map &:to_i;x=0;n.times{|i|x+=a[i]*[i+1,k,n-k+1,n-i].min};p x


# # 翔さん
# k=gets.split[1].to_i
# a=gets.split.map &:to_i
# m=[]
# 1.upto(k-1){|i|
#   m+=a[0,i]+a.reverse[0,i]
# }
# p a.inject(:+)*k-m.inject(:+)
#
#
# k=gets.split[1].to_i
# a=gets.split.map &:to_i
# n=a.size
# s=0
# 0.upto(n-k){|b|
#   s+=a[b,k].inject(:+)
# }
# p s
#
# n,k=gets.split.map &:to_i
# a=gets.split
# s=0
# 0.upto(n-k){|b|
#   s+=a[b,k].map(&:to_i).inject(:+)
# }
# p s
