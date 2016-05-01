# m=gets.to_f**(1.0/3)
# p m.ceil
# p 10**(-2)
# puts m.ceil-1<10**(-2) ? :YES: :NO


gets;x='NO'
101.times{|i|x='YES' if i**3==$_.to_i}
puts x