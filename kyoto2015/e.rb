# n=gets.to_i
# y=[]
# n.times{|i|
# l=gets.split.map &:to_f
# a=l.min;b=l.max
# if b>=a*2/(3**0.5)
# 	y[i]=(a**2+(b/2)**2)**0.5
# else
# 	y[i]=2*(a**2+b**2-a*b*(3**0.5))**0.5
# end
# }
# puts y

# a=b=1
# p x=(4*(a**2+b**2)-a*b*4*(3**0.5))**0.5



(gets.to_i).times{|i|l=gets.split.map &:to_f
a=l.min;b=l.max
A=a*a;B=b*b
p 3*B>4*A ? (A+B/4)**0.5:2*(A+B-a*b*3**0.5)**0.5}

# t=3**0.5
# p b>=a*2/t ?(a**2+(b/2)**2)**0.5:(4*(a**2+b**2)-a*b*4*t)**0.5}







# @a=9
# @b=10


# 二分法

# def f(x)
# 	x**2-2*(@a*(x**2-@b**2)**0.5+@b*(x**2-@a**2)**0.5)
# end

# l=@b
# r=@a+@b
# c=(l+r)/2
# while f(c).abs-0.0000001>0
# 	c=(l+r)/2
# 	if f(c)>0
# 		l=c
# 	else
# 		r=c
# 	end
# end
# p c