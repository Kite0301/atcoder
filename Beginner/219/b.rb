s = []
3.times do
  s << gets.chop
end
gets.chop.split('').each do |n|
  print s[n.to_i - 1]
end
print "\n"
