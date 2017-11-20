a = [2, 1]
87.times{|i|
  a[i+2] = a[i] + a[i+1]
}
p a[gets.to_i]
