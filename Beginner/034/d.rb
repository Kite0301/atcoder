k,n=gets.split.map &:to_i
a=[]
b=[]
n.times{
  w,q=gets.split.map &:to_i
  a<<[w,q]
  b<<q
}
c=b.sort[-k]
x=0
y=[]
z=[]
a.each{|s|
  if s[1]>c
    x+=s[0]
    y<<s
  else s[1]=c
    z<<s
  end
}
