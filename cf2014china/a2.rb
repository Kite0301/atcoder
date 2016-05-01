# n=gets.to_i
# m=10**n
# p m-1
# m.times{|i|
# 	b=c=i.to_s.rjust(n,"0").split("").map &:to_i
# 	c[1]=9-c[1] if n>1&&b[0]%2>0
# 	c[2]=9-c[2] if n>2&&(b[0]+b[1])%2>0
# 	c[3]=9-c[3] if n>3&&(b[0]+b[1]+b[2])%2>0
# 	c[4]=9-c[4] if n>4&&(b[0]+b[1]+b[2]+b[3])%2>0
# 	b.each{|x|print x}
# 	puts ""
# }

# # 最短
# n=gets.to_i
# m=10**n
# p m-1
# m.times{|i|b=c=i.to_s.rjust(n,"0").split("").map &:to_i;c[1]=9-c[1] if n>1&&b[0]%2>0;c[2]=9-c[2] if n>2&&(b[0]+b[1])%2>0;c[3]=9-c[3] if n>3&&(b[0]+b[1]+b[2])%2>0;c[4]=9-c[4] if n>4&&(b[0]+b[1]+b[2]+b[3])%2>0;b.each{|x|print x};puts ""}


# n=gets.to_i
# m=10**n
# p m-1
# m.times{|i|
# 	b=c=i.to_s.rjust(n,"0").split("").map &:to_i
# 	(n-1).times{|k|k+=1
# 		s=0
# 		k.times{|m|s+=b[m]}
# 		c[k]=9-c[k] if s%2>0
# 	}
# 	b.each{|x|print x}
# 	puts ""
# }

n=gets.to_i
m=10**n
p m-1
m.times{|i|b=c=i.to_s.rjust(n,"0").split("").map &:to_i;(n-1).times{|k|k+=1;s=0;k.times{|m|s+=b[m]};c[k]=9-c[k] if s%2>0};b.each{|x|print x};puts ""}