n=gets.to_i
l = n.times.map do
  gets.split.map &:to_i
end

sum = 0
(0..(n-3)).each do |i|
  xi, yi = l[i]
  ((i+1)..(n-2)).each do |j|
    xj, yj = l[j]
    ((j+1)..(n-1)).each do |k|
      xk, yk = l[k]
      sum += 1 if (xj - xi) * (yk - yi) - (xk - xi) * (yj - yi) != 0
    end
  end
end
p sum
