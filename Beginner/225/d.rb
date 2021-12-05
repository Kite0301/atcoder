n, q = gets.split.map &:to_i
d = n.times.map do
  []
end

q.times do
  t,x,y = gets.split.map &:to_i
  if t == 1
    if d[x-1].is_a? Array
      d[x-1][1] << y
      d[y-1][0] == x
    else

    end
  elsif t == 2

  else
  end
end
