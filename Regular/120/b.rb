# h,w = gets.split.map(&:to_i)

# line = Array.new(h+w-1, 0)
# flag = false
# h.times do |i|
#   gets.chop.split('').each_with_index do |s, index|
#     n = {
#       R: 503,
#       B: 509,
#       # '.': 0,
#     }[s.to_sym]
#     next if n.nil?

#     if line[i + index] % n != 0
#       flag = true
#       next
#     end

#     line[i + index] += n
#   end
# end

# if flag
#   p 0
# else
#   min = [h, w].min
#   mul = line.each_with_index.inject(0) do |sum, (value, index)|
#     c = [index + 1, h+w-1 - index, min].min
#     sum + (value == 0 ? 1 : 0)
#     # sum + ((value != c * 503) && (value != c * 509) ? 1 : 0)
#   end
#   p mul == 0 ? 1 : 2 ** (mul % (998244353 - 1)) % 998244353
# end


h,w = gets.split.map(&:to_i)
line = Array.new(h+w-1, nil)
flag = false
h.times do |i|
  gets.chop.split('').each_with_index do |s, index|
    next if s == '.'

    if line[i + index].nil?
      line[i + index] = s
    elsif line[i + index] != s
      flag = true
      next
    end
  end
end

if flag
  p 0
else
  p line.count(nil) == 0 ? 1 : 2 ** (line.count(nil) % (998244353 - 1)) % 998244353
end
