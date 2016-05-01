x,y,w = gets.chomp.split.map(&:to_s)
x = x.to_i
y = y.to_i
arr = Array.new(10)
arr[0] = ""
for i in 1..9 do
	arr[i] = " " + gets.chomp.to_s
end

# x方向の確認
if w.include?("R")
	xd = 1
elsif w.include?("L")
	xd = -1
else
	xd = 0
end
# y方向の確認
if w.include?("U")
	yd = -1
elsif w.include?("D")
	yd = 1
else
	yd = 0
end

# スタート地点登録
ans = "#{arr[y][x]}"
for i in 1..3 do
	x += xd
	y += yd
	# xが折り返す場合
	if x == 0
		x = 2
		xd = 1
	elsif x == 10
		x = 8
		xd = -1
	end
	# yが折り返す場合
	if y == 0
		y = 2
		yd = 1
	elsif y == 10
		y = 8
		yd = -1
	end
	ans = ans + "#{arr[y][x]}"
end

puts ans