sx,sy,gx,gy,t,v = arr = gets.chomp.split.map(&:to_i)
n = gets.chomp.to_i
ans = "NO"
for i in 1..n do
	x,y = gets.chomp.split.map(&:to_i)
	len = ((sx-x)**2 + (sy-y)**2)**(1.0/2).to_f + ((gx-x)**2 + (gy-y)**2)**(1.0/2).to_f
	if len > t*v
	else
		ans = "YES"
		# breakできぬ
	end
end
puts ans