n = gets.chomp.to_i
ans = gets.chomp.to_s
arr = []
for i in 0..3 do
	arr[i] = ans.count("#{(i+1).to_s}")
end
puts "#{arr.max} #{arr.min}"