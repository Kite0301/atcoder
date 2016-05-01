n,m = gets.chomp.split.map(&:to_i)
# 初期状態のセット
arr = []
for i in 0..n do
	arr[i] = i.to_s
end
# 取得した数字と0番目の数字を置換
for i in 1..m do
	cd = gets.chomp.to_s
	pl = arr.index(cd)
	arr[pl] = arr[0]
	arr[0] = cd
end

for i in 1..n do
	puts arr[i]
end