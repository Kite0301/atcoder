gets.to_i.times{s,t=gets.chop.split
u=s.tr(t,"")
puts s.tr(u,"").include?(t)?"YES":"NO"}