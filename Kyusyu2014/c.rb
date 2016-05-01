# n,m,q=gets.split.map &:to_i
# s=""
# n.times{
#   s<<gets.chop
# }
# q.times{
#   p=s.index(gets[0])
#   puts p ? "#{1+p/m} #{1+p%m}" : "NA"
# }



# n,m,q=gets.split.map &:to_i
# h={}
# n.times{|i|
#   l=gets.chop
#   m.times{|j|
#     h[l[j]]=i*m+j if l[j]!="*"
#   }
# }
# q.times{
#   p=h[gets.chop]
#   puts p ? "#{1+p/m} #{1+p%m}" : "NA"
# }


n,m,q=gets.split.map &:to_i;h={};n.times{|i|l=gets.chop;m.times{|j|h[l[j]]=i*m+j if l[j]!="*"}};q.times{;p=h[gets.chop];puts p ?"#{1+p/m} #{1+p%m}":"NA"}