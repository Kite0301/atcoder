_, q = gets.split.map &:to_i
p gets.split.filter { |a| a.to_i < q }.size
