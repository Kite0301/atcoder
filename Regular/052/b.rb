n, q = gets.split.map &:to_i
# corn = [bottom-x, rad, height]
corns = []
n.times do
  corns << gets.split.map &:to_i
end

q.times do
  a, b = gets.split.map &:to_i
  corns.each do |corn|
    bot = corn[0]
    r = corn[1]
    h = corn[2]
    top = bot + h
    if a <= bot && bot <= b
      vol = r * r * h
      vol *= 1 - ((top - b)/h.to_f)**3 if b < top
      p vol * Math::PI / 3
    elsif a <= top && top <= b
      vol = r * r * h
      vol *= ((top - b)/h.to_f)**3 if bot < a
      p vol * Math::PI / 3
    else
    end
end


# 未完成
# 場合分けの方法を間違えた
