n,k=gets.split.map &:to_i
a=gets.split.map &:to_i
x=0
n.times{|i|x+=a[i]*[i+1,k,n-i].min}
p x


n,k=gets.split.map &:to_i;a=gets.split.map &:to_i;x=0;n.times{|i|x+=a[i]*[i+1,k,n-k+1,n-i].min};p x
