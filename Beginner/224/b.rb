h,w = gets.split.map &:to_i

l = h.times.map do
  gets.split.map &:to_i
end

h.times do |i1|
  (h-1-i1).times do |i2|
    i2 = i1 + i2 + 1

    w.times do |j1|
      (w-1-j1).times do |j2|
        j2 = j1 + j2 + 1

        if l[i1][j1] + l[i2][j2]> l[i1][j2] + l[i2][j1]
          puts :No
          exit
        end
      end
    end
  end
end

puts :Yes
