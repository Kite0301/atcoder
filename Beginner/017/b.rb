x = gets.chomp.to_s
ans = ""
while x.size > 0
	case x[x.size-1]
	when "o", "k", "u"
		x = x.chop!
	when "h"
		if x[x.size-2] == "c"
			x = x.chop!
			x = x.chop!
		else
			ans = "NO"
			break
		end
	else
		ans = "NO"
		break
	end
end

if ans != "NO"
	ans = "YES"
end

puts ans