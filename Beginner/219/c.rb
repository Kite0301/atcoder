x = gets.chop
r = {}
('a'..'z').each_with_index do |k, i|
  r[k] = x[i]
end

names = gets.to_i.times.map do
  gets.chop
end

puts(
  names.sort_by do |s|
    s.split('').map { |k| r[k] }.join('')
  end
)
