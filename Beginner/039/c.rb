# s=gets.chop.split('B')
# a=[]
# (s.size).times{|i|
#   a<<i if s[i].size>1
# }
# if a[1]-a[0]==2
#   puts 'Si La So Fa'.split[a[0]]
# else
#   puts 'Mi Re Do'.split[a[0]]
# end


# s=gets.split('B');a=[];(s.size).times{|i|a<<i if s[i].size>1}

a=[];i=0;
gets.split('B').each{|s|a<<i if s!='W';i+=1}
puts (a[1]-a[0]<3?'Si La So Fa':'Mi Re Do').split[a[0]]
