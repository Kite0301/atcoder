o = gets.chop
e = gets.chop
o.size.times {|i|
  print o[i]
  print e[i] if e[i]
}
puts
