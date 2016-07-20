x=1
gets.split.each{|i|
  x*=i.to_i
  x%=10**9+7
}
p x
