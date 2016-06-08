l,x,y,s,d=gets.split.map &:to_f
r=(d-s).abs

if d>=s
  lc=r
  lu=l-r
else
  lc=l-r
  lu=r
end

vc = y+x
vu = y-x

tc = lc/vc
if vu>0
  tu = lu/vu
  p [tc,tu].min
else
  p tc
end
