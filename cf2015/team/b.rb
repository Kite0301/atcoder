a=Array.new(10,0)
10.times{
  gets
  10.times{|j|
    a[j]+=1 if $_[j]=='o'
  }
}
puts a.min>0?:Yes: :No



# a=Array.new(10,0);10.times{gets;10.times{|j|a[j]+=1 if $_[j]=='o'}};puts a.count(0)>0?:No: :Yes