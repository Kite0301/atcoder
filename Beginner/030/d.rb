n,a=gets.split.map &:to_i
k=gets.to_i
b=gets.split.map &:to_i
c=[a]
loop{c<<a=b[a-1];break if @s=c.index(b[a-1])}
p c[k<@s ?k:@s+(k-@s)%(c.size-@s)]


# n,a=gets.split.map &:to_i
# k=gets.to_i
# b=gets.split.map &:to_i
# c=[a]
# loop{c<<a=b[a-1];break if @s=c.index(b[a-1])}
# d=c[@s..-1]
# l=c.size-@s+1





# n,a=gets.split.map &:to_i
# k=gets.to_i
# b=gets.split.map &:to_i
# c=[a]
# loop{c<<a=b[a-1];break if @s=c.index(b[a-1])}
# l=c.size-@s
# p k<=@s ?c[k]:@s>0 ?c[@s+k%l-1]:c[k%l]