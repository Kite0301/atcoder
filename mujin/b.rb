# a=gets.split.map &:to_i
# l = a.inject(:+)
# s = [a.max*2-l, 0].max
# c = Math::PI
# p (l*l-s*s)*c



# a=gets.split.map &:to_i
# l=a.inject(:+)
# p (l*l-[a.max*2-l,0].max**2)*Math::PI

a=gets.split.map &:to_i;
p (-[a.max*2-l=a.inject(:+),0].max**2+l*l)*Math::PI


# a=gets.split.map &:to_i;l=a.inject(:+);p (l*l-[a.max*2-l,0].max**2)*Math::PI


# ---------------------------------------------------------
# http://mujin-pc-2016.contest.atcoder.jp/submissions/647925

# a,b,c=gets.split.map &:to_f
# p 12.56637*((s=a+b+c)-t=[a,b,c,s/2].max)*t
