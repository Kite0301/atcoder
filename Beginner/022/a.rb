n,s,t = gets.chomp.split.map(&:to_i)
w = gets.chomp.to_i
weight = [w]

for i in 1..n-1 do
	weight[i] = weight[i-1] + gets.chomp.to_i
end

p weight.count {|item| s <= item && item <= t }