n = gets.to_i
$a = gets.split.map(&:to_i).sort

mi = 0
mx = n - 1
def f(n, mi, mx)
  if mx - mi <= 1
    return [
      ($a[mx] - n).abs,
      (n - $a[mi]).abs,
    ].min
  end

  h = mi + (mx - mi) / 2
  return 0 if $a[h] == n

  if n < $a[h]
    mx = h
  else
    mi = h
  end
  return f(n, mi, mx)
end

gets.to_i.times do
  b = gets.to_i
  p f(b, mi, mx)
end
