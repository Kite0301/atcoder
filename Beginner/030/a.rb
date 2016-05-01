a,b,c,d=gets.split.map &:to_f
x=b/a;y=d/c
puts x>y ? 'TAKAHASHI':(x<y) ? 'AOKI':'DRAW'


# leaf
a,b,c,d=gets.split.map(&:to_f)
puts [:DRAW,:TAKAHASHI,:AOKI][b/a<=>d/c]