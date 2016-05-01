s=[]
3.times{s<<gets.chop}
n=s[2].size/2
f=g=0
loop{break if !k=s[2][0]
o,p,q=s.map{|m|m.count(k)}
s[2].delete!(k)
f+=[o,q].min
g+=[p,q].min
a=1 if o+p<q}
a=1 if f<n||g<n
puts a ? "NO":"YES"


# s=[]
# 3.times{s<<gets.chop}
# t=$_
# n=t.size/2
# a=f=g=0
# while t!=""
# k=t[0]
# v=t.count(k)
# t.gsub!(k,"")
# f+=x=[s[0].count(k),v].min
# g+=y=[s[1].count(k),v].min
# a=1 if x+y<v
# end
# a=1 if f<n||g<n
# puts ["YES","NO"][a]

# # w=[0,0]
# # m=[]
# # 2.times{|i|w[i]+=m[i]=[s[i].count(k),v].min}
# # a=1 if m[0]+m[1]<v

# z=s.map{|m|m.count(k)}

# s=[]
# 3.times{s<<gets.chop}
# t=s[2]
# n=t.size/2
# a=f=g=0
# while t!=""
# k=t[0]
# o,p,q=s.map{|m|m.count(k)}
# s[2]=t.gsub!(k,"")
# f+=[o,q].min
# g+=[p,q].min
# a=1 if o+p<q
# end
# a=1 if f<n||g<n
# puts ["YES","NO"][a]