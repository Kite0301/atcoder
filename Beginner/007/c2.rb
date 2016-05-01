r,c=gets.split.map &:to_i;s=gets.split.map{|i|i.to_i-1};g=gets.split.map{|i|i.to_i-1};a=[];r.times{a<<gets.chop.split("").map(&:to_s)};i=1;l=[s];a[s[0]][s[1]]=0;while a[g[0]][g[1]]==".";h=[];l.each{|m|x,y=m;[[x+1,y],[x-1,y],[x,y+1],[x,y-1]].each{|m|v,w=m;(a[v][w]=i;h<<m)if a[v][w]=='.'}};l=h;i+=1;end;p a[g[0]][g[1]]



# 短縮前

# r,c=gets.split.map &:to_i
# s=gets.split.map{|i|i.to_i-1}
# g=gets.split.map{|i|i.to_i-1}
# a=[]
# r.times{
#   a<<gets.chop.split("").map(&:to_s)
# }
# i=1
# l=[s]
# a[s[0]][s[1]]=0
# while a[g[0]][g[1]]=="."
#   h=[]
#   l.each{|m|
#     x,y=m
#     [[x+1,y],[x-1,y],[x,y+1],[x,y-1]].each{|m|
#       v,w=m
#       if a[v][w]=='.'
#         a[v][w]=i
#         h<<m
#       end
#     }
#   }
#   l=h
#   i+=1
# end
# p a[g[0]][g[1]]



# 最初のコード

# r,c=gets.split.map &:to_i
# s=gets.split.map{|i|i.to_i-1}
# g=gets.split.map{|i|i.to_i-1}
# a=[]
# r.times{
#   a<<gets.chop.split("").map(&:to_s)
# }
# i=1
# l=[s]
# a[s[0]][s[1]]=0
# while a[g[0]][g[1]]=="."
#   h=[]
#   l.each{|m|
#     h<<[m[0]+1,m[1]] if m[0]+1<r
#     h<<[m[0]-1,m[1]] if m[0]>0
#     h<<[m[0],m[1]+1] if m[1]+1<c
#     h<<[m[0],m[1]-1] if m[1]>0
#   }
#   k=[]
#   h.each{|m|
#     if a[m[0]][m[1]]=='.'
#       a[m[0]][m[1]]=i
#       k<<m
#     end
#   }
#   l=k
#   i+=1
# end
# p a[g[0]][g[1]]