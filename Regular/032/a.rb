require 'prime'

n = gets.chomp.to_i
num = 0
for i in 1..n do
	num += i
end

if Prime.prime?(num)
	puts "WANWAN"
else
	puts "BOWWOW"
end