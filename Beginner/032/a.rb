a=gets.to_i
b=gets.to_i
n=gets.to_i
loop{
  if n%a<1 && n%b<1
    p n
    break
  end
  n+=1
}
