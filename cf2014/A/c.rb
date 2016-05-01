def f(n)
	s=@a/n
	if @a%n==0
		s-=1
	end
	@b/n-s
end
@a,@b=gets.chomp.split.map(&:to_i)
p f(4)-f(100)+f(400)