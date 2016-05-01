def count_uniq(uni,default)
	numbers = Array.new(uni.size)
	for i in 0..uni.size-1 do
		numbers[i] = default.count(uni[i])
	end
	return numbers
end

n,c = gets.chomp.split.map(&:to_i)
arr = []
brr = []
for i in 1..n do
	if i%2 != 1
		arr << gets.chomp.to_i
	else
		brr << gets.chomp.to_i
	end
end
uarr = arr.uniq
ubrr = brr.uniq

narr = count_uniq(uarr,arr)
nbrr = count_uniq(ubrr,arr)

amx = narr.max
bmx = nbrr.max
if uarr[narr.index(amx)] == ubrr[nbrr.index(bmx)]
	if uarr.size == 1 && ubrr.size == 1
		bmx = 0
	elsif uarr.size == 1
		bmx = nbrr.order.reverse[1]
	elsif ubrr.size == 1
		amx = narr.order.reverse[1]
	else
		amxx = amx - narr.sort.reverse[1]
		bmxx = bmx - nbrr.sort.reverse[1]
		if amxx > bmxx
			amx = narr.sort.reverse[1]
		else
			bmx = nbrr.sort.reverse[1]
		end
	end
end
num = (arr.size - amx) + (brr.size - bmx)
p amx
p bmx
puts num*c