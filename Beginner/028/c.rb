arr = gets.chomp.split.map(&:to_i)
sum = arr.inject {|sum, n| sum + n }
numbers = []
for i in 1..4 do
	numbers << sum - arr[0] - arr[i]
end
for i in 2..4 do
	numbers << sum - arr[1] - arr[i]
end
for i in 3..4 do
	numbers << sum - arr[2] - arr[i]
end
numbers << sum - arr[3] - arr[4]
numbers.uniq!
numbers.sort!.reverse!

puts numbers[2]