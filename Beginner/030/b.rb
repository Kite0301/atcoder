a,b=gets.split.map &:to_f
c=(((a%12)*30)+b/2-b*6).abs
p [c,360-c].min