# n,r = gets.chomp.split.map(&:to_i)
# s = gets.chomp.to_s
# ans = -1
# for i in 0..n-r do
# 	if s.include?(".")
# 		if s[i] == "."
# 			for h in i..i+r-1 do
# 				s[h] = "o"
# 			end
# 			ans += 1
# 		end
# 		ans += 1
# 	else
# 		break
# 	end
# end
