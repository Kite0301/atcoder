require 'spreadsheet'
require 'nokogiri'
require 'open-uri'

# レギュラー
r_lang = []
i = 0
loop{
	i += 1
	p num = i.to_s.rjust(3,"0")

	ord=[1,2,3,4]
	page = 1
	url = "http://arc#{num}.contest.atcoder.jp/submissions/all?task_screen_name=arc#{num}_#{ord[0]}"
	doc = Nokogiri.HTML(open(url))

	# ページが存在するかの判定
	break if doc.css('h2').size == 0

	# ordの決定
	ord = ["a","b","c","d"] if doc.css('p').css('span').css('span').css('.lang-ja').size == 1

	arr = []
	4.times{|k|
		url = "http://arc#{num}.contest.atcoder.jp/submissions/all/?order_by=source_length&task_screen_name=arc#{num}_#{ord[k]}&status=AC"
		doc = Nokogiri.HTML(open(url))
		b = doc.css('td').css('.table-nwb')
		arr << b[1].children.to_s
	}
	r_lang << arr
}

# ビギナー
b_lang = []
i = 0
loop{
	i += 1
	p num = i.to_s.rjust(3,"0")

	ord=[1,2,3,4]
	page = 1
	url = "http://abc#{num}.contest.atcoder.jp/submissions/all?task_screen_name=abc#{num}_#{ord[0]}"
	doc = Nokogiri.HTML(open(url))

	# ページが存在するかの判定
	break if doc.css('h2').size == 0

	# ordの決定
	ord = ["a","b","c","d"] if doc.css('p').css('span').css('span').css('.lang-ja').size == 1

	arr = []
	4.times{|k|
		url = "http://abc#{num}.contest.atcoder.jp/submissions/all/?order_by=source_length&task_screen_name=abc#{num}_#{ord[k]}&status=AC"
		doc = Nokogiri.HTML(open(url))
		b = doc.css('td').css('.table-nwb')
		arr << b[1].children.to_s
	}
	b_lang << arr
}

# ここからシート記入
# 新規作成
book = Spreadsheet::Workbook.new    
sheet = book.create_worksheet(name: 'curry')
       
sheet.row(0).concat %w{回 A B C D 回 A B C D}

# レギュラー
r_lang.each_with_index { |arr,i|
	sheet[i+1,0] = i+1
	4.times{|n|
		sheet[i+1,n+1] = arr[n]
	}
}

# ビギナー
b_lang.each_with_index { |arr,i|
	sheet[i+1,5] = i+1
	4.times{|n|
		sheet[i+1,n+6] = arr[n]
	}
}

book.write("short_languages.xls") 