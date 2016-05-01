x,y=gets.split.map &:to_i;n=gets.to_i;l=[];n.times{l<<gets.split.map(&:to_i)};z=[];n.times{|i|a,g=l[i];b,h= n-i>1 ?l[i+1]:l[0];o=x-a;p=y-g;q=b-a;r=h-g;s=(o*o+p*p)**0.5;t=(q*q+r*r)**0.5;c=(o*q+p*r)/(s*t);d=(1-c**2)**0.5;e=s*c;z<<s*d if e>=0 && e<=t};p z.min






# x,y=gets.split.map &:to_i
# n=gets.to_i
# l=[]
# n.times{l<<gets.split.map(&:to_i)}
# z=[]
# n.times{|i|
#   a,g=l[i]
#   b,h= n-i>1 ?l[i+1]:l[0]
#   o=x-a;p=y-g;q=b-a;r=h-g
#   s=(o*o+p*p)**0.5
#   t=(q*q+r*r)**0.5
#   c=(o*q+p*r)/(s*t)
#   d=(1-c**2)**0.5
#   e=s*c
#   z<<s*d if e>=0 && e<=t
# }
# p z.min