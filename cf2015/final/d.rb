a=Array.new(100001,0);b=[];d=[];x=y=c=m=q=0;gets.to_i.times{s,t=gets.split.map &:to_i;d<<[s,t];a[s]+=1;a[t]-=1};a.each{|i|c+=i;x=c if x<c};a.each{|i|y+=i;b<<m if y==x;m+=1};d.each{|w|q=1 if w[0]<=b[0]&&w[1]>=b[-1]+1};p x-q

# n=gets.to_i
# a=Array.new(10**5+1,0)
# d=[]
# n.times{
# 	s,t=gets.split.map &:to_i
# 	d<<[s,t]
# 	a[s]+=1
# 	a[t]-=1
# }
# x=c=0
# a.each{|i|
# 	c+=i
# 	x=c if x<c
# }
# c=f=0
# b=[]
# a.each_with_index{|i,m|
# 	c+=i
# 	if c==x && f==0
# 		f=1
# 		b<<m
# 	elsif c!=x && f==1
# 		f=0
# 		b<<m
# 	end	
# }
# d.each{|w|
# 	if w[0]<=b[0]&&w[1]>=b[-1]
# 		x-=1
# 		break
# 	end
# }
# p x


# a=Array.new(100001,0)
# b=[];d=[]
# gets.to_i.times{s,t=gets.split.map &:to_i
# d<<[s,t];a[s]+=1;a[t]-=1}
# x=y=c=m=q=0
# a.each{|i|c+=i
# x=c if x<c}
# a.each{|i|y+=i
# b<<m if y==x
# m+=1}
# d.each{|w|q=1 if w[0]<=b[0]&&w[1]>=b[-1]+1}
# p x-q