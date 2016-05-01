require 'prime'

s = gets.chomp.to_s
arr = s.split("")
uni = arr.uniq
n = uni.size
ans = -1
if n < 6
	odd = ["1","3","5","7","9"]
	cho = odd.permutation(n).to_a
	for i in 0..cho.size-1 do
		num = ""
		num << s
		for h in 0..n-1 do
			num.gsub!(uni[h],cho[i][h])
		end
		if Prime.prime?(num.to_i)
			ans = num.to_i
			break
		end
	end
end
p ans