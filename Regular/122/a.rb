mod = 10 ** 9 + 7
$n = gets.to_i
list = gets.split.map(&:to_i)

def fibonacci_enumerator
  Enumerator.new do |y|
    a, b = 0, 1
    loop do
      y << a
      a, b = b, a + b
    end
  end
end

fe = fibonacci_enumerator
$f_list = fe.take $n+2

def f(n)
  return 1 if n < 1
  $f_list[n+2]
end

$g_list = []

def g(i)
  k = $n - 3
  return f(k) if i == 0
  return $g_list[i] if $g_list[i]

  $g_list[i] = g(i - 1) + f(k - i * 2) * (i.odd? ? -1 : 1)
end

m = ($n - 1) / 2 + ($n - 1) % 2
ans = list[0] * f($n-1)
m.times do |i|
  e = list[i+1] + list[$n-1-i]
  e /= 2 if i+1 == $n-1-i
  ans += e * (f($n-1) - g(i) * 2)
  ans = ans % mod
end
p ans
