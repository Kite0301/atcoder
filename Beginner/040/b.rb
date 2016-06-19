x=n=gets.to_i
1.upto(n){|i|
  1.upto(n){|j|
    s=i*j
    break if n<i*j
    a=n-s+(i-j).abs
    x=a if a<x
  }
}
p x
