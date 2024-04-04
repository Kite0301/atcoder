t = gets.to_f
l, x, y = gets.split.map(&:to_f)
q = gets.to_i
r = l / 2
q.times do
  e = gets.to_f
  d = e / t * 2 * Math::PI
  y1 = -1.0 * r * Math.sin(d)
  z = r - r * Math.cos(d)
  k = Math.sqrt((y1 - y)**2 + x**2)
  p Math.atan2(z, k) * 180 / Math::PI
end
