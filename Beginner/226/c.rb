n = gets.to_i

$list = n.times.map do
  t,k,*a = gets.split.map &:to_i
  [t,k,a]
end

$r = Array.new(n, false)
$ans = 0
def f(m)
  return if $r[m-1]

  $r[m-1] = true
  t,k,a = $list[m-1]
  $ans += t
  a.each{ |v| f(v) } if k.positive?
end

f(n)
p $ans
