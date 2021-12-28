l,q = gets.split.map &:to_i
$a = [0, l]

def f(x, mi, mx)
  return [mi, mx] if mx - mi == 1    

  h = mi + (mx - mi) / 2
  if x < $a[h]
    f(x, mi, h)
  else
    f(x, h, mx)
  end
end

q.times do
  c,x = gets.split.map &:to_i
  left, right = f(x, 0, $a.size - 1)
  if c == 1
    $a.insert(right, x)
  else
    p $a[right] - $a[left]
  end
end
