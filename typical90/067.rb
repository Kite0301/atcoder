# n,k = gets.to_i

def f(i, n)
  1.step do |i|
    q,r = i.divmod n**i
    break
  end
  i % n
end

p 2 ** 0
p 2 ** 1
