def change(coler)
	case coler
	when 1
		return 0
	when 0
		return 1
	end
end

n = gets.chomp.to_i
arr = Array.new(n+2)
for i in 1..n do
	arr[i] = gets.chomp.to_i
end
if arr.uniq.size == 2
	ans = -1
else
	arr[0] = arr[n]
	arr[n+1] = arr[i]
	brr = []
	p = 0
	ans = 1
	loop{
		for i in 1..n do
			if arr[i] == arr[i-1] && arr[i] == arr[i+1]
				brr[i] = change(arr[i])
				p += 1
			else
				brr[i] = arr[i]
			end
		end
		if p == 0
			break
		else
			ans += 1
		end
		brr[0] = brr[n]
		brr[n+1] = brr[i]
		for i in 0..n+1 do
			arr[i] = brr[i]
		end
		brr = []
		p = 0
	}	
end

p ans