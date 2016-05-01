n=gets.to_i
a=gets.split.map &:to_i
l=a.sort
i=f=0
loop{
  if a[i]==l[0]
    a.delete_at(i)
    l.delete_at(0)
  end
  i+=1
  p a.size
  if a.size==0
    p f+1
    break
  end
  if i==a.size
    f+=0
    i==0
  end
}
