# a=Array.new(100){|i|i}.combination(4).to_a
# a=[[0, 1, 30, 73]]
# a=[[23,66,67,80]]
a=[[2, 54, 70, 79]]
z=0
time=Time.now
a.each_with_index{|b,k|
	if k%39212==1
		p k/39212
	end
	# if k==39212
	# 	break
	# end
	c=Array.new(100,0)
	b.each{|n|
		c[n]=1
		[1,2,9,10,11,18,20,22].each{|m|
			c[n+m]=1 if n+m<=99 && (n%10-(n+m)%10).abs<3
			c[n-m]=1 if n-m>=0 && (n%10-(n-m)%10).abs<3
		}
	}
	flag=0
	10.times{|i|
		i*=10
		sum=0
		10.times{|r|
			sum+=c[i+r]
		}
		if sum==0
			flag=1
			break
		end
	}
	if flag==1
		next
	end
	10.times{|i|
		i*=10
		p c[i..i+9]
	}

	d=Array.new(10){|i|i*10}
	e=[]
	d.each{|u|
		e<<u if c[u]==0
	}
	d=e
	e=[]
	9.times{
		d.each{|u|
			if c[u+1]==0
				e<<u+1
			end
			if u+11<100 && c[u+11]==0
				e<<u+11
			end
			if u-9>0 && c[u-9]==0
				e<<u-9
			end
		}
		d=e
		e=[]
	}
	if d.size==1
		z += 1
		p b
	end
	# if k>1000
	# 	break
	# end
}
puts "正解は#{z}種類"
p Time.now-time

# 1000件で9.75秒
#　予想：3921225件で11時間










# 	n=r=0
# 	x="OK"
# 	10.times{|i|
# 		n=i*10
# 		x="OK"
# 		if c[n]==1
# 			x="NG"
# 			next
# 		end
# 		d=Array.new(10){|i|i*10}
# 		e=[]
# 		d.each{|u|
# 			if c[u+1]==0
# 				e<<u+1
# 			end
# 			if u+11<100 && c[u+11]==0
# 				e<<u+1
# 			end
# 			if u-9>0 && c[u-9]==0
# 				e<<u+1
# 			end
# 		}
# 	}
# 	if r==1
# 		z+=1
# 		p b
# 	end
# 	if k%39212==1
# 		p k/39212
# 	end
# }
# puts "正解は#{z}種類"