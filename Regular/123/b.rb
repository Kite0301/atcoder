n = gets.to_i
a,b,c = 3.times.map do
  gets.split.map(&:to_i).sort
end

al = []
bl = []

sum = 0
(3*n).times do
  min = [a[0], b[0], c[0]].compact.min
  if min == c[0]
    c.shift
    if (al.size * bl.size).positive? && al[0] < bl[-1]
      sum += 1
      bl = bl.filter do |i|
        i > al[0]
      end
      bl.shift
      al.shift
    end
  elsif min == b[0]
    b.shift
    bl.push min
  else
    a.shift
    al.push min
  end
end

p sum

# p c.sort
# sum = 0
# c.sort.each do |num|
#   p "num: #{num}"
#   p "b: #{b}"
#   ai = a.find_index { |e| e < num }
#   bi = b.find_index { |e| e < num }
#   p bi
#   next if ai.nil? || bi.nil?

#   a.delete_at ai
#   b.delete_at bi
#   sum += 1
# end
# p sum

# メモ: 上記コードは A < B が抜けている
