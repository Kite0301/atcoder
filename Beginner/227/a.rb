n,k,a = gets.split.map &:to_i
k = k % n
ans = (a + k - 1) % n
p ans.zero? ? n : ans
