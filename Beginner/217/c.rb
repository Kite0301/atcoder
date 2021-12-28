gets
gets.split.map.with_index do |n, i|
  [n.to_i, i+1]
end.sort_by do |a|
  a[0]
end.each_with_index do |a,i|
  print ' ' unless i.zero?
  print a[1]
end
print "\n"
