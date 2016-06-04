s=gets.chop
l=s.size
x=0
(l/2+1).upto(l-2){|i|
  t=s[0..i-1]
  u=s[i..-1]
  (u.size-1).times{|j|
    v=u[0..j]
    w=u[j+1..-1]
    x+=1 if t[0..j]==v && t[i-l+j+1..-1]==w
  }
}
p x
