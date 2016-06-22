
s=gets.chop.reverse
if s.include?('!')
  i=1
  s.split('').each{|w|i=w=='-'?-i :i==0?1:0}
  p i
else
  puts s.gsub('--','')
end
