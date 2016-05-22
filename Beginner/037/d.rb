h,v=gets.split.map &:to_i
a=[]
b=Array.new(h*v,0)
h.times{
  gets.split.each{|i|
    a<<i.to_i
  }
}
(h*v).times{|i|
  if i-v>-1
    b[i-v]+=1 if a[i]<a[i-v]
  end
  if i<h*v-v
    b[i+v]+=1 if a[i]<a[i+v]
  end
  if i%v>0
    b[i-1]+=1 if a[i]<a[i-1]
  end
  if i%v<v-1
    b[i+1]+=1 if a[i]<a[i+1]
  end
}
b.each{

}
