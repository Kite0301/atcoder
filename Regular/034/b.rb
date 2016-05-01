n=gets.to_i;a=[];340.times{|i|i+=n-170;a<<i if i+i.to_s.split('').map(&:to_i).inject(:+)==n};p a.size;puts a

# a=[1,2,3,4,5,0]
# a.map! &:to_s