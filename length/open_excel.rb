require 'spreadsheet'

user_book = Spreadsheet.open('short_coders.xls', 'rb')
user_sheet = user_book.worksheet(0)

lang_book = Spreadsheet.open('short_languages.xls', 'rb')
lang_sheet = lang_book.worksheet(0)

king = ["mugenen","leafmoon","mayumini","x20"]

# レギュラー
i = 1
reg = []
loop{
	if !user_sheet[i,0]
		break
	end
	brr = []
	4.times{|n|
		brr[n] = 0
		user = user_sheet[i,n+1]
		lang = lang_sheet[i,n+1]
		if king.include?(user)
			brr[n] += 5
		end
		if lang.include?("Bash")
			brr[n] += 10
		elsif lang.include?("Ruby")
			brr[n] += 7
		elsif lang.include?("P")
			brr[n] += 4
		elsif lang.include?("C")
			brr[n] -= 3
		end
	}
	reg << brr
	i += 1
}

# ビギナー
i = 1
beg = []
loop{
	if !user_sheet[i,5]
		break
	end
	brr = []
	4.times{|n|
		brr[n] = 0
		user = user_sheet[i,n+6]
		lang = lang_sheet[i,n+6]
		if king.include?(user)
			brr[n] += 5
		end
		if lang.include?("Bash")
			brr[n] += 10
		elsif lang.include?("Ruby")
			brr[n] += 7
		elsif lang.include?("P")
			brr[n] += 4
		elsif lang.include?("C")
			brr[n] -= 3
		end
	}
	beg << brr
	i += 1
}

# ここからシート記入
# 新規作成
book = Spreadsheet::Workbook.new    
sheet = book.create_worksheet(name: 'curry')
       
sheet.row(0).concat %w{回 A B C D 回 A B C D}

# レギュラー
reg.each_with_index { |arr,i|
	sheet[i+1,0] = i+1
	4.times{|n|
		sheet[i+1,n+1] = arr[n]
	}
}

# ビギナー
beg.each_with_index { |arr,i|
	sheet[i+1,5] = i+1
	4.times{|n|
		sheet[i+1,n+6] = arr[n]
	}
}

book.write("points.xls") 