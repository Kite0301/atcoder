n=gets.to_i
l=gets.split.map(&:to_i).sort
x=0
n.times{|i|x+=l[i*2]}
p x
