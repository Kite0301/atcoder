n=gets.to_i
a=[]
n.times{
  w,h=gets.split.map &:to_i;
  a[w]= a[w] ? a[w]<<h : [h]
}
h=x=0
a.uniq.each{|b|
  next if !b
  t=h
  b.sort.each{|i|
    (h=i;break)if h<i
  }
  x+=1 if t<h
}
p x


# これではダメ
# 入力例3で落ちる
