k = gets.to_i
a,b = gets.chop.split.map do |s|
  s.split('').reverse.map.with_index do |t, i|
    t.to_i * (k ** i)
  end.sum
end

p a * b
