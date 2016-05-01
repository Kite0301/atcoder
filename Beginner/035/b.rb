def c(t)@s.count(t)end
@s=gets.chop.split('')
n=(c('R')-c('L')).abs+(c('U')-c('D')).abs
x=c('?')
p gets.to_i<2?n+x :n>x ?n-x :(n-x)%2
