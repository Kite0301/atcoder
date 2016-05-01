arr = ["z","b","d","t","f","l","s","p","h","n"]
brr = ["r","c","w","j","q","v","x","m","k","g"]

n = gets.chomp.to_i
srr = gets.chomp.split.map(&:to_s).map(&:downcase)
ans = Array.new(n,"")

for i in 0..n-1 do
	while srr[i].size > 0
		if arr.include?(srr[i][0])
			ans[i] += arr.index(srr[i][0]).to_s
		elsif brr.include?(srr[i][0])
			ans[i] += brr.index(srr[i][0]).to_s
		end
		srr[i][0] = ""
	end
end

ans.delete("")

for i in 0..ans.size-1 do
	if i != 0 && ans[i] != ""
		print " "
	end
	print ans[i]
end
puts ""