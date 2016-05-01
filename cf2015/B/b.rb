n,m=gets.split.map &:to_i
a=gets.split.map &:to_i
@q='?'
((m+1)/2).times{|i|
	if a.count(i)*2>n
		@q=i
		break
	end
}
puts @q