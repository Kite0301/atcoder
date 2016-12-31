a,b=gets.split.to_i
m='Positive'
if a<=0 && 0<=b
  m='Zero'
elsif b<0 && (b-a).size%2<1
  m='Negative'
end
puts m
