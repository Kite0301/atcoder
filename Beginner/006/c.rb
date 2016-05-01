n,m = gets.chomp.split.map(&:to_i)
if n*4 < m || n*2 > m
	puts "-1 -1 -1"
elsif n*4 == m
	puts "0 0 #{n}"
elsif n*2 == m
	puts "#{n} 0 0"
else
	res = m - n*2
	c = res / 2
	b = res % 2
	a = n - b - c
	puts "#{a} #{b} #{c}"
end