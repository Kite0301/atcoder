require 'set'

s = Set.new
gets.to_i.times do |i|
  p i+1 if s.add? gets.chop
end
