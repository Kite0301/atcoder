arr = []
brr = []
for i in 0..3 do
	brr = gets.chomp.split.map(&:to_s)
	arr[i] = brr
end
puts "#{arr[3][3]} #{arr[3][2]} #{arr[3][1]} #{arr[3][0]}"
puts "#{arr[2][3]} #{arr[2][2]} #{arr[2][1]} #{arr[2][0]}"
puts "#{arr[1][3]} #{arr[1][2]} #{arr[1][1]} #{arr[1][0]}"
puts "#{arr[0][3]} #{arr[0][2]} #{arr[0][1]} #{arr[0][0]}"