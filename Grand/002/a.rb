a,b=gets.split.map &:to_i
puts a<=0&&0<=b ?'Zero':b<0&&(b-a).size%2<1?'Negative':'Positive'
