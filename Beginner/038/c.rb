# n=gets.to_i
# a=gets.split.map &:to_i
# x=f=1
# 1.upto(n-1){|i|
#   f=a[i-1]<a[i]?f+1:1
#   x+=f
# }
# p x
#

n=gets.to_i;a=gets.split.map &:to_i;x=f=1;1.upto(n-1){|i|f=a[i-1]<a[i]?f+1:1;x+=f};p x
