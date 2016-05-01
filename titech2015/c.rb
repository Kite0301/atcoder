def way34(num)
	case num%6
	when 0
		b = "oO"
	when 1
		b = "o"
	when 2
		b = "O"
	when 3
		b = "Oo"
	when 4
		b = "oOo"
	when 5
		b = "O"
	end
	return (b + "kayama").reverse
end

s = gets.chomp.to_s
s.gsub!("oookayama","G")
s.reverse!
flag = false
count = 0
arr = []
for i in 0..s.size-1 do
	if s[i] == "G"
		if flag == true
			arr << count
			count = 0
		end
		flag = true
	elsif s[i] == "o" && flag == true
		count += 1
	else
		if flag == true
			arr << count
		end
		count = 0
		flag = false
	end
end
if flag == true
	arr << count
end

num = 0
while num < arr.size
	pos = s.index("G")
	(arr[num]).times{
		s[pos + 1] = ""
	}
	s[pos] = "#{way34(arr[num])}"
	num += 1
end

puts s.reverse