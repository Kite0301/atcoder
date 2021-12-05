# p gets.split.map{ |i| (1 + i.to_i) / 2 }.inject(:*)

h,w=gets.split.map &:to_i
if h == 1 || w == 1
  p h * w
else
  p ((h+1)/2) * ((w+1)/2)
end
