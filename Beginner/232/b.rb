s = gets.chop
t = gets.chop

26.times do
  if s == t
    puts :Yes
    exit
  end
  s = s.split('').map { |c| c == 'z' ? 'a' : c.next }.join
end
puts :No
