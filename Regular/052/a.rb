s = gets.chop
x = ''
s.split('').each do |t|
  if t.to_i != 0
    x << t
  else
    x << t if t == '0'
  end
end
puts x
