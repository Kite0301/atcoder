# gets
# z=gets.split.map &:to_i
# a=gets.split.map &:to_i 
# b=gets.split.map &:to_i
# l=[a[-1],b[-1]].max+1
# t=Array.new(l,1)
# l.times{|i|
# 	t[i]*= 2 if a.include?(i)
# 	t[i]*= 3 if b.include?(i)
# }
# h=2
# i=x=0
# while i<l
# 	x+=1;i+=z[h-2]-1;h=h<3 ?3:2 if t[i]%h==0
# 	i+=1
# end
# p x/2


# n,m=gets.split.map &:to_i
# gets
# z=gets.split.map &:to_i
# a=gets.split.map &:to_i 
# b=gets.split.map &:to_i
# l=[a[-1],b[-1]].max+1
# t=Array.new(l)
# h=i=x=0
# while i<l
# 	if (h==0&&a.include?(i))||(h==1&&b.include?(i))
# 		x+=1
# 		i+=z[h]-1
# 		h=h<1 ?1:0
# 	end
# 	i+=1
# end
# p x/2
a=[1,2,3,4,5]
a.delete(?<3)
p a