n,q=gets.split.map &:to_i
a=Array.new(n,0)
q.times{
  l,r,t=gets.split.map &:to_i
  l.upto(r){|i|
    a[i-1]=t
  }
}
puts a
