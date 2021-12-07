# 127

# f(3) = f(2) + f(1)

def f(n)
  return 1 if n == 1
  10 ** (n-1) + f(n-1)
end

def g(l)
  l.times.sum do |i|
    f(i+1)
  end
end

def h(n)
  n == 123
  a = 10 ** (n.to_s.size - 1)
  q,r = n.divmod a
  if q == 1

    r = str.to_i %
  else
  end

  # return 1 if str.size == 1

  # if str[0] == '1'
  #   str.slice!(0)
  #   p str
  #   h(str) + g(str.size - 1)
  # else
  #   g(str.size)
  # end
end

n = gets.chop
p h n
