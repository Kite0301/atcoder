h,w,n=gets.split.map &:to_i
a=[]
n.times{a<<gets.split.map(&:to_i)}
x=[]

w.times{|i|
  u=d=f=0
  a.each{|b|
    if h*b[0]-i*b[1]>0
      u+=1
    elsif h*b[0]-i*b[1]<0
      d+=1
    else
      f+=1
    end
  }
  if f<1 && u==d
    x<<[i,h]
  end
}

(h+1).times{|i|
  u=d=f=0
  a.each{|b|
    if i*b[0]-w*b[1]>0
      u+=1
    elsif i*b[0]-w*b[1]<0
      d+=1
    else
      f+=1
    end
  }
  if f<1 && u==d
    x<<[w,i]
  end
}

if x.size>0
  x.uniq.each{|y|
    puts "(#{y.join(",")})"
  }
else
  p -1
end
