s = gets.chop

if s.size == 1
  puts :Yes
  exit
end
if s.size == 2
  puts s != 'oo' ? :Yes : :No
  exit
end

if s[0] == 'x'
  if s[1] == 'x'
    s = 'o' + s
  else
    s = 'ox' + s
  end
end

if s[-1] == 'o'
  s = s + 'xx'
elsif s[-2] == 'o'
  s = s + 'x'
end

s.gsub!(/(oxx)+/, '')
puts s == '' ? :Yes : :No
