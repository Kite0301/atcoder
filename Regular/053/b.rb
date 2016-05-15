# s=gets.chop.split('').sort
# l=s.size
# 1.upto(l){|i|
#   a=s[i-1]
#   next if a==0;
#   s[i]=0 if a==s[i]
# }
# v=l-2*w=s.count(0)
# p v>1?w/v*2+1:l



# s=gets.chop.split('').sort
# l=s.size
# w=0
# 1.upto(l){|i|
#   (s[i]=0;w+=1) if s[i-1]==s[i]
# }
# v=l-2*w
# p v>1?w/v*2+1:l

# 今これ
# s=gets.chop.split('').sort
# l=s.size
# 1.upto(l){|i|s[i]=0 if s[i-1]==s[i]}
# v=l-2*w=s.count(0)
# p v>1?w/v*2+1:l
#

# s=gets.chop.split('').sort;l=s.size;1.upto(l){|i|s[i]=0 if s[i-1]==s[i]};v=l-2*w=s.count(0);p v>1?w/v*2+1:l




l=gets.size-1
i=0
?a.upto(?z){|t|
  i+=$_.count(t)%2>0?1:0
}
p i>1?(l-i)/i/2*2+1:l


# l=gets.size-1;i=0;?a.upto(?z){|t|i+=1 if $_.count(t)%2>0};p i>1?(l-i)/i/2*2+1:l

# t='a'
# 26.times{
#   p t
#   t.succ!
# }
