while gets!="0 0\n"
n,k=$_.split.map &:to_i
x=gets.split.map(&:to_i).sort!
s=0
k.times{|i|s+=x[i]}
p s
end