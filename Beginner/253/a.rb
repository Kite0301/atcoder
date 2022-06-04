l = gets.split.map &:to_i
puts l[1] == l.sort[1] ? :Yes : :No
