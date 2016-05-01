brr = Array.new(9,0)
crr = Array.new(9,0)
brr[0],brr[1],brr[2] = gets.chomp.split.map(&:to_i)
brr[3],brr[4],brr[5] = gets.chomp.split.map(&:to_i)
crr[0],crr[1] = gets.chomp.split.map(&:to_i)
crr[3],crr[4] = gets.chomp.split.map(&:to_i)
crr[6],crr[7] = gets.chomp.split.map(&:to_i)
arr = Array.new(9) {|i| i}.combination(4).to_a
boy = Array.new(126,0)
gir = Array.new(126,0)
gap = Array.new(126,nil)
for i in 0..125 do
	cro = arr[i]
	for h in 0..7 do
		# 縦の得点
		if cro.include?(h)
			if cro.include?(h+3)
				boy[i] += brr[h]
			else
				gir[i] += brr[h]
			end
		else
			if cro.include?(h+3)
				gir[i] += brr[h]
			else
				boy[i] += brr[h]
			end
		end
		# 横の得点
		if cro.include?(h)
			if cro.include?(h+1)
				boy[i] += crr[h]
			else
				gir[i] += crr[h]
			end
		else
			if cro.include?(h+1)
				gir[i] += crr[h]
			else
				boy[i] += crr[h]
			end
		end
	end
	gap[i] = gir[i] - boy[i]
end
i = 0
t = 0
loop{
	if gap.index(i)
		t = gap.index(i)
		break
	end
	i += 1
}
p boy[t]
p gir[t]


# だめ