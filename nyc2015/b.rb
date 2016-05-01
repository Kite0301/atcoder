a=[];m=f=0
gets.to_i.times{a<<gets.to_i}
a.sort.each{|i|(m+=i;f+=1)if i>m}
p f