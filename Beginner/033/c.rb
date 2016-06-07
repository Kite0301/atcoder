x=0
gets.split('+').each{|s|x+=1 if !s.include?('0')}
p x
