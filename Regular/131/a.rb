a=gets.to_i
b=gets.to_i

if b.even?
  puts a.to_s + '0' + (b / 2).to_s
else
  puts a.to_s + '0' + (b * 5).to_s
end
