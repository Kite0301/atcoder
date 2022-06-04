h, w = gets.split.map &:to_i
koma = []
h.times do |i|
  gets.chop.split('').each_with_index do |s, j|
    next unless s == 'o'

    koma << [j, i]
  end
end
p (koma[0][0] - koma[1][0]).abs + (koma[0][1] - koma[1][1]).abs
