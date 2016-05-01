def g(t)t/100*12+t%100/5;end
n=gets.to_i;a=Array.new(289,0);c=0;q=[]
n.times{|i|s,e=gets.split("-").map &:to_i;a[g(s/5*5)]+=1;a[g(((e-1)/5+1)*5)]-=1}
289.times{|i|w=a[i];q<<(i/12*100+i%12*5).to_s.rjust(4,"0") if (c==0&&w!=0)||(c!=0&&c+w==0);c+=w}
(q.size/2).times{|j|puts "#{q[2*j]}-#{q[2*j+1]}"}