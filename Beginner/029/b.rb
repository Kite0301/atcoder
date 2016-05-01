ans = 0
12.times{
	if gets.chomp.to_s.include?("r")
		ans += 1
	end
}
p ans