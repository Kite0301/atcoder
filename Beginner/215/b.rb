n = gets.to_i
i = 0
loop do
  if 2 ** i > n
    p i - 1
    break
  end
  i += 1
end
