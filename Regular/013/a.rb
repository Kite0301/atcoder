@n,@m,@l = gets.chomp.split.map(&:to_i)
a,b,c = gets.chomp.split.map(&:to_i)
arr = []
 
# 入る個数を数える関数
def box_counter(a,b,c)
	return (@n/a)*(@m/b)*(@l/c)
end

arr << box_counter(a,b,c)
arr << box_counter(a,c,b)
arr << box_counter(b,a,c)
arr << box_counter(b,c,a)
arr << box_counter(c,a,b)
arr << box_counter(c,b,a)

puts arr.max