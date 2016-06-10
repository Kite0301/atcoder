i=0
x='YES'
n=gets.to_i
n.times{
  if gets[0]=='A'
    i+=1
  else
    i-=1
    x='NO' if i<0
  end
}
x='NO' if i!=0
puts x
