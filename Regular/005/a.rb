n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_s)
arr.last[arr.last.size-1] = ""
p arr.count("TAKAHASHIKUN") + arr.count("Takahashikun") + arr.count("takahashikun")