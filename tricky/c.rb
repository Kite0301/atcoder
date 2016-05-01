# def f(p,x)f=g=n=0
# loop{m=n
#   while m%p<1;m/=p;g+=1;end if n>0
#   f+=g;g=0
#   return n if n-f==x
#   return -1 if n>f+x
#   n+=1
# }
# end

# gets.to_i.times{p,x=gets.split.map &:to_i;p p==2 ?p**x-1:f(p,x)}


def u(p,x)f=g=n=0
loop{m=n
  while m%p<1;m/=p;g+=1;end if n>0
  f+=g;g=0
  return n if n-f==x
  return -1 if n>f+x
  n+=1
}
end

gets.to_i.times{p,x=gets.split.map &:to_i;p p==2 ?p**x-1:u(p,x)}