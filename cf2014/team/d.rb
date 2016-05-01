# n=gets.to_i
# a=Array.new(n,"")
# n.times{
# 	gets
# 	n.times{|i|
# 		a[i]+=$_[i]
# 	}
# }
# x=0
# n.times{|i|
# 	x+=a[i].index("X")+a[i].index("Y")-n+1
# }
# puts x>0 ? "X":x<0 ? "Y":"Impossible"




n=x=gets.to_i
a=Array.new(n,"")
n.times{gets;n.times{|i|a[i]+=$_[i]}}
n.times{|i|x+=a[i].index("X")+a[i].index("Y")-n+1}
puts x>n ?"X":x<n ?"Y":"Impossible"