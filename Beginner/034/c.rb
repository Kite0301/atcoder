a=gets.split.map{|i|i.to_i-1}.sort
x=y=f=1
2.upto(a[0]){|i|y*=i}
(a[1]+1).upto(a[0]+a[1]){|i|x*=i
  (x/=y;f+=1)if f<2&&x%y<1
  x%=10**9+7 if f>1}
p x
