# a=gets.to_i
# if 10**9<a
#   s=1001
#   g=10000
# elsif 10**4<a
#   s=1001
#   g=10000
# else
#   s=10
#   g=100
# end

# a=gets.to_i
# 10.upto(10000){|i|
#   x=0
#   t=i.to_s.reverse
#   t.size.times{|j|
#     x+=t[j].to_i*(i**j)
#   }
#   (p x>a ?-1:i;break)if x>=a
# }


# i=23
# x=0
# t=i.to_s.reverse
# t.size.times{|j|
#   x+=t[j].to_i*(i**j)
# }
# p x




a=gets.to_i;10.upto(10000){|i|x=0;m=i;i.to_s.size.times{|j|x+=m%10*i**j;m/=10};(p x>a ?-1:i;break)if x>=a}

# 0.upto(10000)
# 10001.times