class Main
  attr_accessor :prime, :value, :perform
  def initialize(prime, value)
    @prime=prime; @value=value; @perform=value/prime
  end
end


n,m,l=gets.split.map &:to_i
mains=[]
subs=[]
n.times{|i|
  a,b=gets.split.map &:to_f
  mains[i]=Main.new(a,b)
}

hoge = mains.sort{|aa, bb|
  bb.perform <=> aa.perform
}

p hoge