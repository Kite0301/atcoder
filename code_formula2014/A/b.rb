t='7 8 9 0| 4 5 6|  2 3|   1'
gets
['.','o'].each{|n|gets.split.map(&:to_s).each{|m|t.sub!(m,n)}}
10.times{|m|t.sub!(m.to_s,'x')}
puts t.split('|')