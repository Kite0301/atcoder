def A(m,n)
  if @l[m][n]
    @l[m][n]
  else
    if m==0
      x=n+1
    elsif n==0
      x=A(m-1,1)
    else
      x=A(m-1,A(m,n-1))
    end
    @l[m][n]=x
  end
end

# @l=Array.new(4,Array.new(61,nil))
@l=[[],[],[],[]]

m,n=gets.split.map &:to_i
p A(m,n)
p @l