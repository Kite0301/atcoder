l = gets.chop.split('').sort.reverse

a = b = ''

l.each do |s|
  if a.to_i <= b.to_i
    a += s
  else
    b += s
  end
end

p a.to_i * b.to_i
