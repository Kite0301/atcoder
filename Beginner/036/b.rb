n=gets.to_i
a=[]
n.times{|i|
  a<<gets.chop
}
n.times{|i|
  n.times{|j|
    print a[n-1-j][i]
  }
  print "\n"
}
