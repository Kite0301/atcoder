s = gets.chop
t = gets.chop
f = false
s.size.times do |i|
  if f
    if s[i] != t[i] && s[i-1] == t[i] && s[i] == t[i-1]
      puts :Yes
    else
      puts :No
    end
    exit
  elsif s[i] != t[i]
    f = true
  end
end
puts :Yes
