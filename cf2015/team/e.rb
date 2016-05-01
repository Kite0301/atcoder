# 60.times{|m|
#   m-=30;m=0 if m<0
#   p m
# }


# h=(h<6 ? 0: h-6)
# m=(h<30 ? 0: h-30)

# h-=6;h=0 if h<0
# m-=30;m=0 if m<0

# a,b=gets.split.map &:to_i
# h,m=gets.split.map &:to_i
# h-=6;h=0 if h<0
# m-=30;m=0 if m<0
# puts a<h||(a==h&&b<m) ? 'No' : 'Yes'



a,b=gets.split.map &:to_i;h,m=gets.split.map &:to_i;h-=6;h=0 if h<0;m-=30;m=0 if m<0;puts a<h||(a==h&&b<m) ?:No: :Yes