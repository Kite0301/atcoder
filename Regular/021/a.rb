ans = "GAMEOVER"
arr = Array.new(4,Array.new(4))
for i in 0..3
	arr[i] = gets.chomp.split.map(&:to_i)
	# 横のチェック
	for n in 0..2 do
		if arr[i][n] == arr[i][n+1]
			ans = "CONTINUE"
		end
	end
end
# 縦のチェック
for i in 0..3 do	
	for n in 0..2 do
		if arr[n][i] == arr[n+1][i]
			ans = "CONTINUE"
		end
	end
end
# 出力
puts ans