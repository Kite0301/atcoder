n,k = gets.split.map &:to_i
a = gets.split.map &:to_i
b =gets.split.map &:to_i

sum = n.times.sum do |i|
  (a[i] - b[i]).abs
end

puts k >= sum && (k - sum).even? ? :Yes : :No
