s=gets.chop.split("!")
e=s.size
if e<2
	x=""
elsif e%2<1
	x="!"
else
	x="!!"
end	
if s[0].size%2>0
	x="-"+x
end
puts x