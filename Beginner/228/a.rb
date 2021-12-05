s,t,x=gets.split.map &:to_i
ans =
  if s <= t
    s <= x && x < t ? :Yes : :No
  else
    t <= x && x < s ? :No : :Yes
  end
puts ans
