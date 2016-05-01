n = gets.chomp.to_i
a,b = gets.chomp.split.map(&:to_i)
k = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)

answer = 'YES'

if arr.count(a) > 0 || arr.count(b) > 0
	answer = 'NO'
end

for i in 0..arr.count-1 do
	if arr.count(arr[i]) > 1
		answer = 'NO'
		break
	end
end

puts answer