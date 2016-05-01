n=gets.to_i
s=gets.chop
i=-1
x=0
while i<n
  i+=3
  2.times{|j|(i-=j+1;break)if s[i+2-j]=="."}
  x+=1 if s[i]=="X"
end
p x