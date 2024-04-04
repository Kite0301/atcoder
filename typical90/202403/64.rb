n, q = gets.split.map &:to_i
a = gets.split.map &:to_i
d = [0]
x = nil
y = nil
a.each do |i|
  y = x
  x = i
  next if y.nil?

  d << x - y
end
ans = d[1..(n-1)].map(&:abs).sum
q.times do |x|
  l, r, v = gets.split.map &:to_i

  if l > 1
    if v == 0
    elsif d[l-1] * v >= 0
      ans += v.abs
    else # d[l-1] * v < 0
      if d[l-1] > 0
        if d[l-1] + v >= 0
          ans += v
        else
          ans -= 2 * d[l-1] + v
        end
      else
      end



    end
    d[l-1] += v
  end
  p ans
  if r < n
    if v == 0
    elsif d[r] * v < 0
      ans += v.abs
    else # d[r] * v >= 0

    end
    d[r] -= v
  end
  p ans
end
