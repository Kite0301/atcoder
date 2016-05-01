s = gets.chomp.to_s
case s[2]
when "B"
	print "Bachelor "
when "M"
	print "Master "
when "D"
	print "Doctor "
end
print s[0]
print s[1]
puts ""