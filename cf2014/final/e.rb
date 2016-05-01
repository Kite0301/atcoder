n=gets.to_i
a=gets.split.map &:to_i
x=c=d=0
(n-1).times{|i|
  c=a[i+1]-a[i]
  x+=1 if c*d<0
  d=c if !(c==0&&i>0)
}
p x>0 ?x+2:x


gets;a=gets.split.map &:to_i;x=c=d=0;(a.size-1).times{|i|c=a[i+1]-a[i];x+=1 if c*d<0;d=c if c!=0||i<1};p x>0 ?x+2:x