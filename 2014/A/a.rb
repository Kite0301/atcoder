# 1.upto(9){|i|
#   p i
#   10.times{|j|
#     p i*10+j
#     10.times{|k|
#       p i*100+j*10+k
#       p 1000 if i+j+k<2
#     }
#   }
# }

1.upto(9){|i|p i;10.times{|j|p i*10+j;10.times{|k|p i*100+j*10+k;p 1000 if i+j+k<2}}}