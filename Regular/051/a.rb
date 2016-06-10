# x,y,r=gets.split.map &:to_i
# s,t,u,v=gets.split.map &:to_i
#
# # is red area
# f=0
# f+=1 if x+r>u
# f+=1 if x-r<s
# f+=1 if y+r>v
# f+=1 if y-r<t
# puts f>0?'YES':'NO'
#
# # is blue area
# f=0
# l=r*r
# f+=1 if (s-x)**2+(t-y)**2>l
# f+=1 if (t-x)**2+(u-y)**2>l
# f+=1 if (u-x)**2+(v-y)**2>l
# f+=1 if (v-x)**2+(s-y)**2>l
# puts f>0?'YES':'NO'


x,y,r=gets.split.map &:to_i
s,t,u,v=gets.split.map &:to_i
l=r*r
puts (x+r>u||x-r<s||y+r>v||y-r<t)?'YES':'NO'
puts ((s-x)**2+(t-y)**2>l||(t-x)**2+(u-y)**2>l||(u-x)**2+(v-y)**2>l||(v-x)**2+(s-y)**2>l)?'YES':'NO'
