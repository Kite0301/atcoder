a=Array.new(100,0)
n=gets.to_i
a[n]=1
[1,2,9,10,11,18,20,22].each{|m|
	a[n+m]=1 if n+m<=99 && n%10<=(n+m)%10
	a[n-m]=1 if n-m>=0 && n%10>=(n+m)%10
}
10.times{|i|
	i*=10
	p a[i..i+9]
}
