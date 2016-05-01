def way34(num)
	case num%3
	when 0
		b = "Oo"
	when 1
		b = "o"
	when 2
		b = "O"
	end
	return (b + "kayama")
end

s = gets.chomp.to_s
arr = s.split("oookayama")
if s.reverse.index("amayakooo") == 0
	last = true
else
	last = false
end

brr = Array.new(arr.size,0)
for i in 0..arr.size-1 do
	if i == arr.size-1 && last == false
		brr[i] = nil
		break
	end
	str = arr[i].reverse
	while str[0] == "o"
		brr[i] += 1
		str[0] = ""
	end
	arr[i] = str.reverse
end

for i in 0..arr.size-1 do
	if brr[i] != nil
		arr[i] = arr[i] + way34(brr[i])
	end
end

puts arr.join("")