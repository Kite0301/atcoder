a,b,c = gets.split.map &:to_i

(a..b).each do |e|
  if e % c == 0
    p e
    exit
  end
end

p -1
