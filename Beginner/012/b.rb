n = gets.chomp.to_i
h = n / 3600
m = (n % 3600) / 60
s = n % 60
arr = [h.to_s,m.to_s,s.to_s]
for i in 0..2 do
	if arr[i].size == 1
		arr[i] = "0" + arr[i]
	end
end
puts arr.join(":")