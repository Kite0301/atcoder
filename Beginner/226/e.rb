n,m=gets.split.map &:to_i
list = m.times.map do
  gets.split.map &:to_i
end
if n != m
  p 0
  exit
end

p list
