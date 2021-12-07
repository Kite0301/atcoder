require 'set'

h,w = gets.split.map &:to_i
l = h.times.map do
  gets.chop.split('').map &:to_i
end

h.times do |i|
  w.times do |j|
    if l[i][j] != 0
      print l[i][j]
    else
      s = Set[1,2,3,4,5]
      s.delete l[i-1][j] if i != 0
      s.delete l[i+1][j] if i != h-1
      s.delete l[i][j-1] if j != 0
      s.delete l[i][j+1] if j != w-1
      (1..5).each do |n|
        if s.delete? n
          l[i][j] = n
          break
        end
      end
      print l[i][j]
    end
  end
  print "\n"
end
