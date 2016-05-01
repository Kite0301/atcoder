n=gets.to_i
((n-1)/9+1).times{print n%9<1?9:n%9}
puts ""