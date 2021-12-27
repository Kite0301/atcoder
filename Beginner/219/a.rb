x = gets.to_i

puts(
  if x < 40
    40 - x
  elsif x < 70
    70 - x
  elsif x < 90
    90 - x
  else
    :expert
  end
)
