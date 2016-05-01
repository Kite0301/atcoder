n=gets.to_i
p m=10**n-1
a=Array.new(10){|i|i.to_s}
10.times{|h|
	v=h.to_s
	if n>1
		10.times{|i|
			i=9-i if h%2>0
			w=i.to_s
			if n>2
				10.times{|j|
					j=9-j if (h+i)%2>0
					x=j.to_s
					if n>3
						10.times{|k|
							k=9-k if (h+i+j)%2>0
							y=k.to_s
							if n>4
								10.times{|l|
									l=9-l if (h+i+j+k)%2>0
									z=l.to_s
								}
								puts v+w+x+y+z
							else
								puts v+w+x+y
							end
						}
					else
						puts v+w+x
					end
				}
			else
				puts v+w
			end
		}
	else
		puts v
	end
}