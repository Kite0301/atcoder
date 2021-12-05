l = gets.split.map(&:to_i)

q = [l,l.reverse].map do |a,b,c|
  if a >= b && a >= c
    a == c ? a - b : a-b+1 + a-c+2
  elsif a >= b && a < c
    nc = (c-a).odd? ? c+1 : c
    h = (nc + a) / 2
    (h >= b ? h-b : (b-h) * 2) + nc-c
  elsif a < b && a >= c
    a-c + (b-a) * 2
  else
    nc = (a-c).odd? ? c+1 : c
    h = (nc + a) / 2
    (h >= b ? h-b : (b-h) * 2) + nc-c
  end
end
p q.min
