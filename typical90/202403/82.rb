N = 10**9 + 7
l, r = gets.split
ans = 0
(l.size..r.size).each do |n|
  if n == l.size
    # ans += (10**(n+1) - l.to_i) * n
  elsif n = r.size
    # ans += (10**n - r.to_i + 1) * n
  else
    # ans += 9 * 10**(n-1) * n
  end
  ans %= N
end
p ans
