s=gets.chop
k=gets.to_i
x=[]
i=0
while i+k-1<s.size
  x<<s[i..i+k-1]
  i+=1
end
p x.uniq.size
