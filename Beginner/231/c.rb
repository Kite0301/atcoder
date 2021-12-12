n,q = gets.split.map &:to_i
$a = gets.split.map(&:to_i).sort

def f(n, mi, mx)
  if (mx - mi).abs <= 1
    if $a[mi] == n
      return mi - 1
    else
      return mi
    end
  end

  h = mi + (mx - mi) / 2
  if n < $a[h]
    f(n, mi, h)
  else
    f(n, h, mx)
  end
end


xs = q.times.map do
  gets.to_i
end

xs.each do |x|
  if x > $a[-1]
    p 0
  elsif x <= $a[0]
    p n
  else
    p n - 1 - f(x, 0, n-1)
  end
end