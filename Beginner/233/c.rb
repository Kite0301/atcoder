n, x = gets.split.map &:to_i

h = {1=>1}

n.times do |i|
  _, *a = gets.split.map &:to_i

  new_h = {}

  a.each do |b|
    h.each do |k, v|
      num = b * k
      new_h[num] ||= 0
      new_h[num] += v
    end
  end

  h = new_h
end

p h[x].to_i
