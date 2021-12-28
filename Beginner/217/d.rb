l,q = gets.split.map &:to_i
a = [0, l]

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


q.times do
s  c,x = gets.split.map &:to_i
  b = a.dup

  loop do

  end
  b << x
end
