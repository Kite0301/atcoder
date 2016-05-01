# # 整数受け取り
# n=gets.to_i
# # 文字列
# s=gets.to_s
# # 配列で受け取り
# a=gets.split.map &:to_i
# # 分割して２変数に代入
# a,b=gets.split.map &:to_i
# # 繰り返し
# n.times{|i|}

n,l=gets.split.map &:to_i
t=1
x=0
gets.chop.split('').each{|m|
  if m=='+'
    t+=1
    if t>l
      t=1
      x+=1
    end
  else
    t-=1
  end
}
p x