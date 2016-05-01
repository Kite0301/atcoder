a=gets.gsub('[','').split(',').map &:to_i
c=Array.new(100,'.')
a.each{|i|
	c[i]='C'
}
10.times{|i|
	i*=10
	10.times{|k|
		print c[i+k]
	}
	puts ""
}