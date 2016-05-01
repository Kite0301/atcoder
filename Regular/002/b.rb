y,m,d = gets.chomp.split("/").map(&:to_i)
ans = ""

# うるう年の定義
def leapyearcheck(y)
	leap = false
	if y%4 == 0
		leap = true
	end
	if y%100 == 0
		leap = false
	end
	if y%400 == 0
		leap = true
	end
	return leap
end

# 日付チェック
def daycheck(y,m,d)
	leap = leapyearcheck(y)
	check = true
	case m
	when 2
		if d > 29
			check = false
		elsif d == 29
			if leap
			else
				check = false
			end
		end
	when 4,6,9,11
		if d == 31
			check = false
		end
	end
	return check
end

# 答えの表示変更
def viewfix(ans)
	y,m,d = ans.split("/").map(&:to_s)
	if m.size == 1
		m = "0#{m}"
	end
	if d.size == 1
		d = "0#{d}"
	end
	return "#{y}/#{m}/#{d}"
end

# まず今月だけ確認
if y%m == 0
	for i in d..31 do
		if (y/m)%i == 0 && daycheck(y,m,i)
			ans = "#{y}/#{m}/#{i}"
			break
		end
	end
end

# 今月ヒットしなかった場合
if ans == ""
	mons = []
	days = []
	for i in m+1..12 do
		if y%i == 0
			mons << i
		end
	end
	for i in 1..31 do
		if y%i == 0
			days << i
		end
	end
	mons.each {|mon|
		if ans != ""
			break
		end
		days.each {|day|
			if (y/mon)%day == 0  && daycheck(y,mon,day)
				ans = "#{y}/#{mon}/#{day}"
				break
			end
		}
	}
end

# 今年ヒットしなかった場合
if ans == ""
	ans = "#{y+1}/01/01"
end

puts viewfix(ans)