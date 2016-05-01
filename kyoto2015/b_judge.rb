a=Array.new(100,0)

70.times{|n|
	a[n]=1
	[1,2,9,10,11,18,20,22].each{|m|
		a[n+m]=1 if n+m<=99 && n%10<=(n+m)%10
		a[n-m]=1 if n-m>=0 && n%10>=(n+m)%10
	}
}

n=0
x="OK"
10.times{|i|
	n=i*10
	x="OK"
	9.times{
		if n<10
			if a[n+1]==0&&a[n+11]==1
				n+=1
			elsif a[n+1]==1&&a[n+11]==0
				n+=11
			else
				x="NG"
				break
			end
		elsif n>89
			if a[n+1]==0&&a[n-9]==1
				n+=1
			elsif a[n+1]==1&&a[n-9]==0
				n-=9
			else
				x="NG"
				break
			end
		else
			if a[n+1]==0&&a[n+11]==1&&a[n-9]==1
				n+=1
			elsif a[n+1]==1&&a[n+11]==0&&a[n-9]==1
				n+=11
			elsif a[n+1]==1&&a[n+11]==1&&a[n-9]==0
				n-=9
			else
				x="NG"
				break
			end
		end
	}
	if x=="OK"
		break
	end
}
puts x