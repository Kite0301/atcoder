n=gets.to_i
s=gets.chop.to_s
a=[]
i=0
while s[i+1]
	if s[i]==s[i+1]
		a<<s[i]
		i+=1
	else
		i+=2
	end
end
p [a.count("0"),a.count("1")].max


# n=gets.to_i
# p n-gets.gsub("10","s").gsub("01","s").count("s")