a=[]
gets.to_i.times{a<<gets.to_i}
b=a.uniq.sort
a.each{|n|
  p b.index(n)
}
