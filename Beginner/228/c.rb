n,k = gets.split.map &:to_i
list = n.times.map do
  gets.split.map(&:to_i).sum
end
border = list.sort.reverse[k-1]
list.each do |s|
  puts s + 300 >= border ? :Yes : :No
end
