s=gets.chop
a=gets.split.map &:to_i
4.times{|i|s.insert(a[i]+i,'"')}
puts s
