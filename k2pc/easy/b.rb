n=gets.to_i
a=gets.split.map(&:to_i).sort!.reverse!
b=Array.new(7,"")
n.times{
  c=gets.split("")
  7.times{|i|
    b[i]+=c[i]
  }
}
x=[]
7.times{|i|
  f=x[i]=0
  z=b[i].split("")
  z.each{|m|
    if m=="X"
      f+=1
    else
      x[i]=f if x[i]<f
      f=0
    end
  }
  x[i]=f if x[i]<f
}
x.sort!.reverse!
j=k=0
q="YES"
while k<7
  j+=1
  if j>9
    q="NO"
    break
  end
  k+=1 if a[j]>=x[k]
end
puts q