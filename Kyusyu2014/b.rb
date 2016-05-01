# x=""
# gets
# 3.times{|i|x+=[:nil,:un,:bi,:tri,:quad,:pent,:hex,:sept,:oct,:enn][$_[i].to_i].to_s}
# x+="ium"
# puts x.gsub("ii","i").gsub("nnn","nn").capitalize




# l=[:nil,:un,:bi,:tri,:quad,:pent,:hex,:sept,:oct,:enn];x="";gets;3.times{|i|x+=l[$_[i].to_i].to_s};x+="ium";puts x.gsub("ii","i").gsub("nnn","nn").capitalize


# x=""
# gets
# 3.times{|i|x+="nil un bi tri quad pent hex sept oct enn".split[$_[i].to_i]}
# x+="ium"
# puts x.gsub("ii","i").gsub("nnn","nn").capitalize




# x.gsub(/(ii|nnn)/){|m|m.slice(0)}
# puts x.capitalize


puts gets.gsub(/(.)/){|m|"nil un bi tri quad pent hex sept oct enn".split[m.to_i]}.gsub("\n","ium").gsub("ii","i").gsub("nnn","nn").capitalize