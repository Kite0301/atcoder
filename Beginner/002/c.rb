xa,ya,xb,yb,xc,yc = gets.chomp.split.map(&:to_i)
a = xb - xa
b = yb - ya
c = xc - xa
d = yc - ya
p (a*d - b*c).abs * 0.5