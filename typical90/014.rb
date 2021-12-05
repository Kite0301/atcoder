n = gets.to_i
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort

s = n.times.sum do |i|
  (a[i] - b[i]).abs
end

p s
