l,r = gets.split.map &:to_i
range = (l-1)..(r-1)
s = gets.chop
t = s[range]
s[range] = t.reverse
puts s
