list = []
gets.to_i.times do
  t, x = gets.split.map &:to_i
  if t == 1
    list.unshift x
  elsif t == 2
    list.push x
  else
    p list[x-1]
  end
end
