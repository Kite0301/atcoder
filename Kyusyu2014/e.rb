# x,y,u,w,h=gets.split.map &:to_f
# a=u*u+w*w-h*h
# b=2*(x*u+y*w)
# c=x*x+y*y
# d=b**2-4*a*c
# e=d**0.5
# t=(-b-e)/(2*a)

# if d>=0
# else
#   if b+e<0
#     p t
#   elsif b-e<0
#     p (-b+e)/(2*a)
#   else
#   end
# end




# puts t<0 ?"IMPOSSIBLE":t


x,y,u,w,h=gets.split.map &:to_f
a=u*u+w*w-h*h
b=2*(x*u+y*w)
c=x*x+y*y
d=b**2-4*a*c
e=d**0.5
if a==0&&-b/c>=0
  p -b/c
elsif x*x+y*y==0
  puts "IMPOSSIBLE"
else
  if d<0
    puts "IMPOSSIBLE"
  else
    x=[]
    x<<-(b+e)/(2*a) if -(b+e)/(2*a)>=0
    x<<-(b-e)/(2*a) if -(b-e)/(2*a)>=0
    if x!=[]
      puts x.min
    else
      puts "IMPOSSIBLE"
    end
  end
end
# x="IMPOSSIBLE"
# if d>=0
#   if (-b-e)/(2*a)>=0
#     x=(-b-e)/(2*a)
#   elsif (-b+e)/(2*a)>=0
#     x=(-b+e)/(2*a)
#   end
# end
# puts x





# if(vx*vx+vy*vy==h*h){
#   if(2*x0*vx+2*y0*vy==0) res=-1;
#   else res=-(x0*x0+y0*y0)/(2*x0*vx+2*y0*vy);
# }
