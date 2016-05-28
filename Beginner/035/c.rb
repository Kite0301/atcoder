# n,q=gets.split.map &:to_i
# h={}
# q.times{
#   l,r=gets.split.map(&:to_i)
#   h[l-1]=(h[l-1]||0)+1
#   h[r]=(h[r]||0)-1
# }
# x=0
# n.times{|i|
#   x+=h[i]||0
#   print x%2
# }
# puts
#

n,q=gets.split.map &:to_i;h={};q.times{l,r=gets.split.map &:to_i;h[l-1]=(h[l-1]||0)+1;h[r]=(h[r]||0)-1};x=0;n.times{|i|x+=h[i]||0;print x%2};puts
