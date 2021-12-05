n=gets.to_i
l = (n-1).times.map do
  gets.split.map &:to_i
end
s = (l[0] & l[1])[0]
l.each do |a,b|
  if a != s && b != s
    puts :No
    exit
  end
end
puts :Yes
