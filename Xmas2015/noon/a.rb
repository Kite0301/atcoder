n=gets.to_i
x,t,a,b,c=gets.split.map &:to_i
q=0
# n.times{
#   q+=x
#   t.times{
#     p x=(a*x+b)%c
#   }
#   p ""
# }
# p q
10.times{
  p x=(a*x+b)%c
}