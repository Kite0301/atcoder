require 'date'

ad = gets.chomp.split.map(&:to_i)
bd = gets.chomp.split.map(&:to_i)

a = Date.new(2012, ad[0], ad[1])
b = Date.new(2012, bd[0], bd[1])

p (b - a).to_i