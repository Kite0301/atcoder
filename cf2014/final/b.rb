x=0
gets.size.times{|i|
  n=$_[i].to_i
  x+= i%2<1 ?n:-n
}
p x