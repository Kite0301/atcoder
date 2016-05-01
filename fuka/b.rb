# 2012/04/14 17:45:00
# a=gets.gsub("/"," ").gsub(":"," ").split
# a,b=gets.split
# a.split("/")
# b.split(":")

# a[0],a[1],a[2]

# d=Time.mktime 2006,6,2,16,30,50
# p d

while gets!="0\n"
a,b,c,d,e,f,g=$_.gsub("/"," ").gsub(":"," ").split
puts (Time.gm(a,b,c,d,e,f,g)+gets.to_i(2)).strftime("%Y/%m/%d %H:%M:%S")
end


# require 'Time'
# p Time.parse(gets)
# while gets!="0\n"
# puts (Time.parse($_)+gets.to_i(2)).strftime("%Y/%m/%d %H:%M:%S")
# end