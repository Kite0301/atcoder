ans = []
loop{
	n = gets.chomp.to_i
	if n == 0
		break
	else
		arr = []
		n.times{|i|
			arr[i] = gets.chomp.to_s
		}
		brr = arr.sort
		if arr == brr
			ans << "yes"
		else
			ans << "no"
		end
	end
}
puts ans