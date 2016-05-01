# def k(i,h)
#   f=0
#   @a.each{|b|t=h*b[0].to_i-i*b[1].to_i
#     f+=t>0?1:t<0?-1:10}
#   @x<<"(#{i},#{h})" if f==0
# end
# @a=[];@x=[]
# h,w,n=gets.split.map &:to_i
# n.times{@a<<gets.split}
# w.times{|i|k(i,h)}
# (h+1).times{|i|k(w,i)}
# puts@x.size>0?@x.uniq: -1
#


def k(i,h)f=0;@a.each{|b|t=h*b[0].to_i-i*b[1].to_i;f+=t>0?1:t<0?-1:10};@x<<"(#{i},#{h})" if f==0;end;@a=[];@x=[];h,w,n=gets.split.map &:to_i;n.times{@a<<gets.split};w.times{|i|k(i,h)};(h+1).times{|i|k(w,i)};puts@x.size>0?@x.uniq: -1
