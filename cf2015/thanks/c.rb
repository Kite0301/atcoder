gets
h=gets.split
x=gets.to_i
i=1
h.each{|m|break if m.to_i>x;i+=1}
p i