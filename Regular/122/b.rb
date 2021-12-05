n = gets.to_i
list = gets.split.map(&:to_i).sort
p n == 1 ? list[0] / 2.0 : (n.odd? ? list[(n/2+1)..(n-1)].sum + list[n / 2] / 2 : list[(n/2)..(n-1)].sum) / n.to_f
