a,b = gets.chomp.split.map(&:to_s)
arr = []
arr << ("9" + a[1] + a[2]).to_i - b.to_i
arr << (a[0] + "9" + a[2]).to_i - b.to_i
arr << (a[0] + a[1] + "9").to_i - b.to_i
arr << a.to_i - ("1" + b[1] + b[2]).to_i
arr << a.to_i - (b[0] + "0" + b[2]).to_i
arr << a.to_i - (b[0] + b[1] + "0").to_i
p arr.max