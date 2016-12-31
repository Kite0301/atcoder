def f(n)
  m=(n*n+4.0)/8.0
  return m.floor
end

puts f(f(f(20)))
