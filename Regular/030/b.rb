arr = Array.new(10)
for i in 0..9 do
	s = gets.chomp.split("").map(&:to_s)
	arr[i] = s
end
p arr

# やりかけ
# 入力を受け取るとこまで