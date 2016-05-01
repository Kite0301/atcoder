n,k = gets.chomp.split.map(&:to_f)
way = 0
# ｋが３つ
way += 1
# ｋが２つ
way += (n-1)*3
# ｋが３つ
way += (k-1)*(n-k)*6
p way/(n**3)