def f(n)t=0;loop{l=n.to_s.size-1;i=n/(10**l);i-=1 if i>4;t += i*8**l;break if l==0 || (n/(10**l)+1)%5==0;n%=(10**l)};t;end;a,b=gets.split.map(&:to_i);p (b+1-f(b+1))-(a-f(a))

def f(n)
	t=0
	loop{l=n.to_s.size-1
		i=n/(10**l);i-=1 if i>4
		t += i*8**l
		break if l==0 || (n/(10**l)+1)%5==0
		n%=(10**l)}
	t
end
a,b=gets.split.map(&:to_i)
p (b+1-f(b+1))-(a-f(a))