# a,b = gets.split.map{|i|i.to_i(16)}
# puts ->{
#   if a == b
#     '='
#   elsif a > b
#     :>
#   else
#     :<
#   end
# }.call


a,b=gets.split.map{|i|i.to_i(16)}
puts->{a==b ?'=':a>b ?:>: :<}.call
