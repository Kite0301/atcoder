# a,b,c,d=gets.split.map &:to_i
# r=[]
# c.times{r<<gets.split.map(&:to_i).sort[-b]}
# p r.sort[-d]

# # p gets[2].to_i



# r=[]
# (n=gets)[4].to_i.times{r<<gets.split.map(&:to_i).sort[-n[2].to_i]}
# p r.sort[-n[6].to_i]

a,b,c,d=gets.split.map &:to_i;r=[];c.times{r<<gets.split.map(&:to_i).sort[-b]};p r.sort[-d]