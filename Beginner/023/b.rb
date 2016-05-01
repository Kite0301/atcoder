n = gets.chomp.to_i
s = gets.chomp.to_s

num = (n-1)/2
arr = ['b']
for i in 1..num do
	case i%3
	when 1
		arr[i] = 'a' << arr[i-1] << 'c'
	when 2
		arr[i] = 'c' << arr[i-1] << 'a'
	when 0
		arr[i] = 'b' << arr[i-1] << 'b'
	end
end

if arr.index(s)
	p arr.index(s)
else
	p -1
end